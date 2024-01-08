namespace WindowsFormsApplication1
{
    partial class Form1
    {

        

      
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
       
        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.SET25C = new System.Windows.Forms.Button();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.StandBy = new System.Windows.Forms.Button();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.zedGraphControl1 = new ZedGraph.ZedGraphControl();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.Ramp = new System.Windows.Forms.Button();
            this.RampTimer = new System.Windows.Forms.Timer(this.components);
            this.ClearGraph = new System.Windows.Forms.Button();
            this.AthenaInit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // SET25C
            // 
            this.SET25C.Location = new System.Drawing.Point(37, 66);
            this.SET25C.Name = "SET25C";
            this.SET25C.Size = new System.Drawing.Size(96, 42);
            this.SET25C.TabIndex = 0;
            this.SET25C.Text = "25C";
            this.SET25C.UseVisualStyleBackColor = true;
            this.SET25C.Click += new System.EventHandler(this.SET25C_Click);
            // 
            // serialPort1
            // 
            this.serialPort1.PortName = "COM5";
            // 
            // textBox1
            // 
            this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox1.Location = new System.Drawing.Point(215, 50);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(92, 31);
            this.textBox1.TabIndex = 1;
            this.textBox1.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CheckKeys);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(203, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(123, 25);
            this.label1.TabIndex = 2;
            this.label1.Text = "Enter Temp";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(332, 39);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(94, 42);
            this.button2.TabIndex = 3;
            this.button2.Text = "Set Temp";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // StandBy
            // 
            this.StandBy.Location = new System.Drawing.Point(37, 134);
            this.StandBy.Name = "StandBy";
            this.StandBy.Size = new System.Drawing.Size(96, 42);
            this.StandBy.TabIndex = 4;
            this.StandBy.Text = "Stand By ON";
            this.StandBy.UseVisualStyleBackColor = true;
            this.StandBy.Click += new System.EventHandler(this.StandBy_Click);
            // 
            // textBox2
            // 
            this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox2.Location = new System.Drawing.Point(522, 48);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 31);
            this.textBox2.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(518, 14);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(104, 25);
            this.label2.TabIndex = 6;
            this.label2.Text = "Set Temp";
            // 
            // textBox3
            // 
            this.textBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox3.Location = new System.Drawing.Point(656, 50);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(100, 31);
            this.textBox3.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.DarkRed;
            this.label3.Location = new System.Drawing.Point(642, 14);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(139, 26);
            this.label3.TabIndex = 8;
            this.label3.Text = "Stage Temp ";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // zedGraphControl1
            // 
            this.zedGraphControl1.Location = new System.Drawing.Point(208, 101);
            this.zedGraphControl1.Name = "zedGraphControl1";
            this.zedGraphControl1.ScrollGrace = 0D;
            this.zedGraphControl1.ScrollMaxX = 0D;
            this.zedGraphControl1.ScrollMaxY = 0D;
            this.zedGraphControl1.ScrollMaxY2 = 0D;
            this.zedGraphControl1.ScrollMinX = 0D;
            this.zedGraphControl1.ScrollMinY = 0D;
            this.zedGraphControl1.ScrollMinY2 = 0D;
            this.zedGraphControl1.Size = new System.Drawing.Size(566, 296);
            this.zedGraphControl1.TabIndex = 9;
            this.zedGraphControl1.Load += new System.EventHandler(this.zedGraphControl1_Load);
            // 
            // timer2
            // 
            this.timer2.Enabled = true;
            this.timer2.Interval = 10000;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(25, 268);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(129, 61);
            this.button4.TabIndex = 10;
            this.button4.Text = "START GRAPH";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(25, 335);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(129, 62);
            this.button5.TabIndex = 11;
            this.button5.Text = "STOP GRAPH/RAMP";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // Ramp
            // 
            this.Ramp.Location = new System.Drawing.Point(37, 201);
            this.Ramp.Name = "Ramp";
            this.Ramp.Size = new System.Drawing.Size(96, 41);
            this.Ramp.TabIndex = 12;
            this.Ramp.Text = "Ramp";
            this.Ramp.UseVisualStyleBackColor = true;
            this.Ramp.Click += new System.EventHandler(this.Ramp_Click);
            // 
            // RampTimer
            // 
            this.RampTimer.Interval = 2000;
            this.RampTimer.Tick += new System.EventHandler(this.RampTimer_Tick);
            // 
            // ClearGraph
            // 
            this.ClearGraph.Location = new System.Drawing.Point(27, 403);
            this.ClearGraph.Name = "ClearGraph";
            this.ClearGraph.Size = new System.Drawing.Size(132, 27);
            this.ClearGraph.TabIndex = 13;
            this.ClearGraph.Text = "Clear Graph";
            this.ClearGraph.UseVisualStyleBackColor = true;
            this.ClearGraph.Click += new System.EventHandler(this.ClearGraph_Click);
            // 
            // AthenaInit
            // 
            this.AthenaInit.Location = new System.Drawing.Point(37, 12);
            this.AthenaInit.Name = "AthenaInit";
            this.AthenaInit.Size = new System.Drawing.Size(96, 35);
            this.AthenaInit.TabIndex = 14;
            this.AthenaInit.Text = "Athena Init";
            this.AthenaInit.UseVisualStyleBackColor = true;
            this.AthenaInit.Click += new System.EventHandler(this.AthenaInit_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(793, 444);
            this.Controls.Add(this.AthenaInit);
            this.Controls.Add(this.ClearGraph);
            this.Controls.Add(this.Ramp);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.zedGraphControl1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.StandBy);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.SET25C);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

       }

        #endregion

        private System.Windows.Forms.Button SET25C;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button StandBy;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Timer timer1;
        private ZedGraph.ZedGraphControl zedGraphControl1;
        private System.Windows.Forms.Timer timer2;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button Ramp;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Timer RampTimer;
        private System.Windows.Forms.Button ClearGraph;
        private System.Windows.Forms.Button AthenaInit;
        public System.IO.Ports.SerialPort serialPort1;
        



    }
}

