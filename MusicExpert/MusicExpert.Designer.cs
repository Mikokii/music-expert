namespace MusicExpert
{
    partial class MusicExpert
    {
        /// <summary>
        /// Wymagana zmienna projektanta.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Wyczyść wszystkie używane zasoby.
        /// </summary>
        /// <param name="disposing">prawda, jeżeli zarządzane zasoby powinny zostać zlikwidowane; Fałsz w przeciwnym wypadku.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kod generowany przez Projektanta formularzy systemu Windows

        /// <summary>
        /// Metoda wymagana do obsługi projektanta — nie należy modyfikować
        /// jej zawartości w edytorze kodu.
        /// </summary>
        private void InitializeComponent()
        {
            this.next = new System.Windows.Forms.Button();
            this.Info = new System.Windows.Forms.Label();
            this.rB1 = new System.Windows.Forms.RadioButton();
            this.rB2 = new System.Windows.Forms.RadioButton();
            this.rB3 = new System.Windows.Forms.RadioButton();
            this.rB4 = new System.Windows.Forms.RadioButton();
            this.rB5 = new System.Windows.Forms.RadioButton();
            this.SuspendLayout();
            // 
            // next
            // 
            this.next.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.next.Location = new System.Drawing.Point(0, 273);
            this.next.Margin = new System.Windows.Forms.Padding(4);
            this.next.Name = "next";
            this.next.Size = new System.Drawing.Size(684, 28);
            this.next.TabIndex = 0;
            this.next.Text = "Next >";
            this.next.UseVisualStyleBackColor = true;
            this.next.Click += new System.EventHandler(this.next_Click);
            // 
            // Info
            // 
            this.Info.Location = new System.Drawing.Point(20, 20);
            this.Info.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.Info.Name = "Info";
            this.Info.Size = new System.Drawing.Size(580, 19);
            this.Info.TabIndex = 1;
            this.Info.Text = "Info";
            this.Info.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // rB1
            // 
            this.rB1.AutoSize = true;
            this.rB1.Location = new System.Drawing.Point(20, 61);
            this.rB1.Margin = new System.Windows.Forms.Padding(4);
            this.rB1.Name = "rB1";
            this.rB1.Size = new System.Drawing.Size(107, 21);
            this.rB1.TabIndex = 2;
            this.rB1.TabStop = true;
            this.rB1.Text = "radioButton1";
            this.rB1.UseVisualStyleBackColor = true;
            // 
            // rB2
            // 
            this.rB2.AutoSize = true;
            this.rB2.Location = new System.Drawing.Point(20, 102);
            this.rB2.Margin = new System.Windows.Forms.Padding(4);
            this.rB2.Name = "rB2";
            this.rB2.Size = new System.Drawing.Size(107, 21);
            this.rB2.TabIndex = 3;
            this.rB2.TabStop = true;
            this.rB2.Text = "radioButton2";
            this.rB2.UseVisualStyleBackColor = true;
            // 
            // rB3
            // 
            this.rB3.AutoSize = true;
            this.rB3.Location = new System.Drawing.Point(20, 143);
            this.rB3.Margin = new System.Windows.Forms.Padding(4);
            this.rB3.Name = "rB3";
            this.rB3.Size = new System.Drawing.Size(107, 21);
            this.rB3.TabIndex = 4;
            this.rB3.TabStop = true;
            this.rB3.Text = "radioButton3";
            this.rB3.UseVisualStyleBackColor = true;
            // 
            // rB4
            // 
            this.rB4.AutoSize = true;
            this.rB4.Location = new System.Drawing.Point(20, 184);
            this.rB4.Margin = new System.Windows.Forms.Padding(4);
            this.rB4.Name = "rB4";
            this.rB4.Size = new System.Drawing.Size(107, 21);
            this.rB4.TabIndex = 5;
            this.rB4.TabStop = true;
            this.rB4.Text = "radioButton4";
            this.rB4.UseVisualStyleBackColor = true;
            // 
            // rB5
            // 
            this.rB5.AutoSize = true;
            this.rB5.Location = new System.Drawing.Point(20, 225);
            this.rB5.Margin = new System.Windows.Forms.Padding(4);
            this.rB5.Name = "rB5";
            this.rB5.Size = new System.Drawing.Size(107, 21);
            this.rB5.TabIndex = 6;
            this.rB5.TabStop = true;
            this.rB5.Text = "radioButton5";
            this.rB5.UseVisualStyleBackColor = true;
            // 
            // MusicExpert
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(684, 301);
            this.Controls.Add(this.rB5);
            this.Controls.Add(this.rB4);
            this.Controls.Add(this.rB3);
            this.Controls.Add(this.rB2);
            this.Controls.Add(this.rB1);
            this.Controls.Add(this.Info);
            this.Controls.Add(this.next);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "MusicExpert";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button next;
        private System.Windows.Forms.Label Info;
        private System.Windows.Forms.RadioButton rB1;
        private System.Windows.Forms.RadioButton rB2;
        private System.Windows.Forms.RadioButton rB3;
        private System.Windows.Forms.RadioButton rB4;
        private System.Windows.Forms.RadioButton rB5;
    }
}

