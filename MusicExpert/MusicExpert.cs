using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using CLIPSNET;

namespace MusicExpert
{
    public partial class MusicExpert : Form
    {
        private CLIPSNET.Environment clips = new CLIPSNET.Environment();
        private List<string> messagesList = new List<string>();
        private string currentSong;
        private FactAddressValue currentState;
        public MusicExpert()
        {
            InitializeComponent();
            clips.LoadFromResource("MusicExpert","MusicExpert.facts.clp");
            clips.LoadFromResource("MusicExpert", "MusicExpert.rules.clp");
        }

        protected override void OnLoad(EventArgs e)
        {
            Setup();
        }
        private void next_Click(object sender, EventArgs e)
        {
            if (currentState["name"].ToString() == "\"LEAF\"")
            {
                Setup();
                return;
            }

            RadioButton checked_rbutton = GetCheckedChoiceButton();
            if (checked_rbutton != null)
            {
                clips.AssertString($"(user-response {checked_rbutton.Text})");
                clips.Run();
                FetchAndDisplayMessages();
            }
            UncheckButtons();


            currentState = clips.FindFact("current-state");
            if (currentState["name"].ToString() == "\"LEAF\"")
            {
                next.Text = "Restart";    
            }
        }

        private void Setup()
        {
            clips.Reset();
            clips.Run();
            FetchAndDisplayMessages();
            currentState = clips.FindFact("current-state");
            next.Text = "Next ->";
        }

        private RadioButton GetCheckedChoiceButton()
        {
            // Create a list of radio buttons
            List<RadioButton> radioButtons = new List<RadioButton> { rB1, rB2, rB3, rB4 };

            // Iterate through the list of radio buttons
            foreach (var radioButton in radioButtons)
            {
                if (radioButton.Checked)
                { return radioButton; }
            }

            return null;
        }

        private void UncheckButtons()
        {
            // Create a list of radio buttons
            List<RadioButton> radioButtons = new List<RadioButton> { rB1, rB2, rB3, rB4 };

            // Iterate through the list of radio buttons
            foreach (var radioButton in radioButtons)
            {
                radioButton.Checked = false;
            }

        }

        private void FetchAndDisplayMessages()
        {
            messagesList.Clear();
            currentSong = null;

            List<FactAddressValue> messages = clips.FindAllFacts("display-message");

            foreach (FactAddressValue message in messages)
            {
                string text = message["text"].ToString();
                messagesList.Add(text); // Add the message to the list
                clips.Eval($"(retract {message.FactIndex})");
            }

            FactAddressValue currentSongFact = clips.FindFact("current-song");
            if (currentSongFact != null)
            {
                currentSong = currentSongFact["name"].ToString(); // Get the song name
            }

            ChangeMessages();
        }

        private void ChangeMessages()
        {
            if (!string.IsNullOrEmpty(currentSong))
            {
                Info.Text = currentSong;
            }

            // Only show the radio buttons that have corresponding messages
            if (messagesList.Count > 0 && !string.IsNullOrEmpty(messagesList[0]) && messagesList[0].Length > 2)
            {
                rB1.Visible = true;
                rB1.Text = messagesList[0];
            }
            else
            {
                rB1.Visible = false;
            }

            if (messagesList.Count > 1 && !string.IsNullOrEmpty(messagesList[1]) && messagesList[1].Length > 2)
            {
                rB2.Visible = true;
                rB2.Text = messagesList[1];
            }
            else
            {
                rB2.Visible = false;
            }

            if (messagesList.Count > 2 && !string.IsNullOrEmpty(messagesList[2]) && messagesList[2].Length > 2)
            {
                rB3.Visible = true;
                rB3.Text = messagesList[2];
            }
            else
            {
                rB3.Visible = false;
            }

            if (messagesList.Count > 3 && !string.IsNullOrEmpty(messagesList[3]) && messagesList[3].Length > 2)
            {
                rB4.Visible = true;
                rB4.Text = messagesList[3];
            }
            else
            {
                rB4.Visible = false;
            }
        }
    }
}
