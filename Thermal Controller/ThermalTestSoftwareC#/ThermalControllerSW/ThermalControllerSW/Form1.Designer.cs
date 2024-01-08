namespace ThermalControllerSW
{
    partial class ThermalBackgroundWorker
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.StageTempValue = new System.Windows.Forms.NumericUpDown();
            this.SetTempValue = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.GetTempButton = new System.Windows.Forms.Button();
            this.SystemTimer = new System.Windows.Forms.Timer(this.components);
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.numericUpDown3 = new System.Windows.Forms.NumericUpDown();
            this.FlushButton = new System.Windows.Forms.Button();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.StatusButton = new System.Windows.Forms.Button();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.StageTempValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.SetTempValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown3)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.StageTempValue);
            this.groupBox1.Controls.Add(this.SetTempValue);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(159, 92);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(71, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(54, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Get Temp";
            // 
            // StageTempValue
            // 
            this.StageTempValue.DecimalPlaces = 1;
            this.StageTempValue.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.StageTempValue.InterceptArrowKeys = false;
            this.StageTempValue.Location = new System.Drawing.Point(6, 63);
            this.StageTempValue.Maximum = new decimal(new int[] {
            200,
            0,
            0,
            0});
            this.StageTempValue.Name = "StageTempValue";
            this.StageTempValue.ReadOnly = true;
            this.StageTempValue.Size = new System.Drawing.Size(59, 20);
            this.StageTempValue.TabIndex = 3;
            // 
            // SetTempValue
            // 
            this.SetTempValue.DecimalPlaces = 1;
            this.SetTempValue.Location = new System.Drawing.Point(6, 26);
            this.SetTempValue.Maximum = new decimal(new int[] {
            150,
            0,
            0,
            0});
            this.SetTempValue.Minimum = new decimal(new int[] {
            20,
            0,
            0,
            0});
            this.SetTempValue.Name = "SetTempValue";
            this.SetTempValue.Size = new System.Drawing.Size(59, 20);
            this.SetTempValue.TabIndex = 2;
            this.SetTempValue.Value = new decimal(new int[] {
            45,
            0,
            0,
            0});
            this.SetTempValue.ValueChanged += new System.EventHandler(this.SetTempValue_ValueChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(71, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Set Temp";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(199, 41);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(61, 17);
            this.checkBox1.TabIndex = 1;
            this.checkBox1.Text = "Update";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // GetTempButton
            // 
            this.GetTempButton.Location = new System.Drawing.Point(190, 12);
            this.GetTempButton.Name = "GetTempButton";
            this.GetTempButton.Size = new System.Drawing.Size(75, 23);
            this.GetTempButton.TabIndex = 2;
            this.GetTempButton.Text = "Get Temp";
            this.GetTempButton.UseVisualStyleBackColor = true;
            this.GetTempButton.Click += new System.EventHandler(this.GetTempButton_Click);
            // 
            // SystemTimer
            // 
            this.SystemTimer.Enabled = true;
            this.SystemTimer.Tick += new System.EventHandler(this.SystemTimer_Tick);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(125, 175);
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(159, 20);
            this.textBox1.TabIndex = 5;
            // 
            // serialPort1
            // 
            this.serialPort1.PortName = "COM16";
            this.serialPort1.ReadTimeout = 100;
            this.serialPort1.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.serialPort1_DataReceived);
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(12, 175);
            this.textBox2.Name = "textBox2";
            this.textBox2.ReadOnly = true;
            this.textBox2.Size = new System.Drawing.Size(65, 20);
            this.textBox2.TabIndex = 6;
            // 
            // numericUpDown3
            // 
            this.numericUpDown3.DecimalPlaces = 1;
            this.numericUpDown3.Location = new System.Drawing.Point(199, 64);
            this.numericUpDown3.Maximum = new decimal(new int[] {
            10000,
            0,
            0,
            0});
            this.numericUpDown3.Name = "numericUpDown3";
            this.numericUpDown3.Size = new System.Drawing.Size(59, 20);
            this.numericUpDown3.TabIndex = 5;
            // 
            // FlushButton
            // 
            this.FlushButton.Location = new System.Drawing.Point(87, 110);
            this.FlushButton.Name = "FlushButton";
            this.FlushButton.Size = new System.Drawing.Size(50, 23);
            this.FlushButton.TabIndex = 7;
            this.FlushButton.Text = "Flush";
            this.FlushButton.UseVisualStyleBackColor = true;
            this.FlushButton.Click += new System.EventHandler(this.FlushButton_Click);
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(2, 139);
            this.textBox3.Name = "textBox3";
            this.textBox3.ReadOnly = true;
            this.textBox3.Size = new System.Drawing.Size(149, 20);
            this.textBox3.TabIndex = 8;
            // 
            // StatusButton
            // 
            this.StatusButton.Location = new System.Drawing.Point(12, 110);
            this.StatusButton.Name = "StatusButton";
            this.StatusButton.Size = new System.Drawing.Size(50, 23);
            this.StatusButton.TabIndex = 9;
            this.StatusButton.Text = "Status";
            this.StatusButton.UseVisualStyleBackColor = true;
            this.StatusButton.Click += new System.EventHandler(this.StatusButton_Click);
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(190, 139);
            this.textBox4.Name = "textBox4";
            this.textBox4.ReadOnly = true;
            this.textBox4.Size = new System.Drawing.Size(32, 20);
            this.textBox4.TabIndex = 10;
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(251, 139);
            this.textBox5.Name = "textBox5";
            this.textBox5.ReadOnly = true;
            this.textBox5.Size = new System.Drawing.Size(33, 20);
            this.textBox5.TabIndex = 11;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(193, 120);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Sent";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(241, 119);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Received";
            // 
            // textBox6
            // 
            this.textBox6.Location = new System.Drawing.Point(251, 90);
            this.textBox6.Name = "textBox6";
            this.textBox6.ReadOnly = true;
            this.textBox6.Size = new System.Drawing.Size(32, 20);
            this.textBox6.TabIndex = 13;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(176, 93);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 13);
            this.label5.TabIndex = 14;
            this.label5.Text = "COMTimeout";
            // 
            // ThermalBackgroundWorker
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(296, 218);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textBox6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox5);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.StatusButton);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.FlushButton);
            this.Controls.Add(this.numericUpDown3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.GetTempButton);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.groupBox1);
            this.Name = "ThermalBackgroundWorker";
            this.Text = "ThermalBackgroundWorker";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.Shown += new System.EventHandler(this.ThermalBackgroundWorker_Shown);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.StageTempValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.SetTempValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown3)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown StageTempValue;
        private System.Windows.Forms.NumericUpDown SetTempValue;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Button GetTempButton;
        private System.Windows.Forms.Timer SystemTimer;

        private System.Windows.Forms.TextBox textBox1;
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.NumericUpDown numericUpDown3;
        private System.Windows.Forms.Button FlushButton;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Button StatusButton;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox6;
        private System.Windows.Forms.Label label5;
        
    }
}

