using System;
using System.CodeDom;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.IO;
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
        private enum CurrentState { PROCESS, LEAF};
        private CurrentState currentState;
        private String currentInfoId;
        private List<string> currentMessagesId = new List<string>();
        public MusicExpert()
        {
            InitializeComponent();
            clips.LoadFromResource("MusicExpert","MusicExpert.facts.clp");
            clips.LoadFromResource("MusicExpert", "MusicExpert.rules.clp");
            clips.LoadFromResource("MusicExpert", "MusicExpert.id_to_text.clp");
        }

        protected override void OnLoad(EventArgs e)
        {
            Setup();
        }
        private void next_Click(object sender, EventArgs e)
        {
            if (currentState == CurrentState.LEAF)
            {
                Setup();
                return;
            }

            RadioButton checked_rbutton = GetCheckedChoiceButton();
            if (checked_rbutton != null)
            {
                clips.AssertString("(process)");
                String evalStr = "(find-fact ((?f state)) TRUE)";
                FactAddressValue fv = (FactAddressValue)((MultifieldValue)clips.Eval(evalStr))[0];

                int index = FindIndex(checked_rbutton);
                clips.AssertString($"(answer {fv["asked"].ToString()} {currentMessagesId[index]})");
                clips.Run();
                FetchAndDisplayMessages();
            }
            UncheckButtons();
        }

        private int FindIndex(RadioButton checked_rbutton)
        {
            if (checked_rbutton == rB1) return 0;
            else if (checked_rbutton == rB2) return 1;
            else if (checked_rbutton == rB3) return 2;
            else if (checked_rbutton == rB4) return 3;
            else if (checked_rbutton == rB5) return 4;
            return -1;
        }

        private void Setup()
        {
            clips.Reset();
            clips.Run();
            FetchAndDisplayMessages();
        }

        private RadioButton GetCheckedChoiceButton()
        {
            // Create a list of radio buttons
            List<RadioButton> radioButtons = new List<RadioButton> { rB1, rB2, rB3, rB4, rB5 };

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
            List<RadioButton> radioButtons = new List<RadioButton> { rB1, rB2, rB3, rB4, rB5 };

            // Iterate through the list of radio buttons
            foreach (var radioButton in radioButtons)
            {
                radioButton.Checked = false;
            }

        }

        private void FetchAndDisplayMessages()
        {
            currentMessagesId.Clear();
            String evalStr = "(find-fact ((?f state)) TRUE)";
            FactAddressValue fv = (FactAddressValue)((MultifieldValue)clips.Eval(evalStr))[0];

            /*========================================*/
            /* Determine the Next/Prev button states. */
            /*========================================*/

            if (fv["is-leaf"].ToString().Equals("Yes"))
            {
                currentState = CurrentState.LEAF;
                next.Text = "Restart";
            }
            else
            {
                currentState = CurrentState.PROCESS;
                next.Text = "Next ->";

            }

            /*=====================*/
            /* Set up the choices. */
            /*=====================*/

            MultifieldValue damf = (MultifieldValue)fv["answers"];
            List<RadioButton> radioButtons = new List<RadioButton> { rB1, rB2, rB3, rB4, rB5 };
            
            foreach (var radioButton in radioButtons)
            {
                radioButton.Visible = false;
            }

            for (int i = 0; i < damf.Count; i++)
            {
                LexemeValue da = (LexemeValue)damf[i];

                RadioButton rButton = radioButtons[i];

                String id = da.Value;
                currentMessagesId.Add(id);
                string messageQuery = $"(find-fact ((?f text-to-id)) (eq ?f:id {id}))";
                string message = ((FactAddressValue)((MultifieldValue)clips.Eval(messageQuery))[0])["text"].ToString(); ;
                rButton.Text = message;
                rButton.Visible = true;
            }

            /*====================================*/
            /* Set the label to the display text. */
            /*====================================*/

            String textId = (((SymbolValue)fv["content"]).Value).ToString();
            currentInfoId = textId;
            String textQuery = $"(find-fact ((?f text-to-id)) (eq ?f:id {textId}))";
            String text = ((FactAddressValue)((MultifieldValue)clips.Eval(textQuery))[0])["text"].ToString();

            Info.Text = text;
        }
    }
}
