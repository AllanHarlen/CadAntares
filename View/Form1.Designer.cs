namespace Cadastrar
{
    partial class frm_cadastro
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_cadastro));
            this.pic_Antares = new System.Windows.Forms.PictureBox();
            this.txt_razao = new System.Windows.Forms.TextBox();
            this.razao = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_fantasia = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_endereco = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cbb_uf = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txt_bairro = new System.Windows.Forms.TextBox();
            this.cbb_cidade = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txt_inscricao = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.cbb_regime = new System.Windows.Forms.ComboBox();
            this.txt_email = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.button_cnpj = new System.Windows.Forms.Button();
            this.label20 = new System.Windows.Forms.Label();
            this.txt_cnae = new System.Windows.Forms.TextBox();
            this.label24 = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.label26 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label27 = new System.Windows.Forms.Label();
            this.button_cep = new System.Windows.Forms.Button();
            this.label18 = new System.Windows.Forms.Label();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.button1 = new System.Windows.Forms.Button();
            this.txt_cep = new System.Windows.Forms.MaskedTextBox();
            this.txt_cnpjs = new System.Windows.Forms.MaskedTextBox();
            this.txt_fone = new System.Windows.Forms.MaskedTextBox();
            this.button_ok = new System.Windows.Forms.PictureBox();
            this.button_cancel = new System.Windows.Forms.PictureBox();
            this.label13 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pic_Antares)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.button_ok)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.button_cancel)).BeginInit();
            this.SuspendLayout();
            // 
            // pic_Antares
            // 
            this.pic_Antares.Image = ((System.Drawing.Image)(resources.GetObject("pic_Antares.Image")));
            this.pic_Antares.Location = new System.Drawing.Point(89, 12);
            this.pic_Antares.Name = "pic_Antares";
            this.pic_Antares.Size = new System.Drawing.Size(261, 240);
            this.pic_Antares.TabIndex = 0;
            this.pic_Antares.TabStop = false;
            // 
            // txt_razao
            // 
            this.txt_razao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_razao.Location = new System.Drawing.Point(29, 226);
            this.txt_razao.Multiline = true;
            this.txt_razao.Name = "txt_razao";
            this.txt_razao.Size = new System.Drawing.Size(382, 26);
            this.txt_razao.TabIndex = 1;
            this.txt_razao.TextChanged += new System.EventHandler(this.txt_razao_TextChanged);
            // 
            // razao
            // 
            this.razao.AutoSize = true;
            this.razao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.razao.Location = new System.Drawing.Point(25, 200);
            this.razao.Name = "razao";
            this.razao.Size = new System.Drawing.Size(107, 20);
            this.razao.TabIndex = 2;
            this.razao.Text = "Razão Social:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(25, 255);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(121, 20);
            this.label1.TabIndex = 4;
            this.label1.Text = "Nome Fantasia:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // txt_fantasia
            // 
            this.txt_fantasia.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_fantasia.Location = new System.Drawing.Point(29, 279);
            this.txt_fantasia.Multiline = true;
            this.txt_fantasia.Name = "txt_fantasia";
            this.txt_fantasia.Size = new System.Drawing.Size(382, 26);
            this.txt_fantasia.TabIndex = 2;
            this.txt_fantasia.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(25, 358);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 20);
            this.label2.TabIndex = 6;
            this.label2.Text = "Endereço:";
            // 
            // txt_endereco
            // 
            this.txt_endereco.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_endereco.Location = new System.Drawing.Point(29, 382);
            this.txt_endereco.Multiline = true;
            this.txt_endereco.Name = "txt_endereco";
            this.txt_endereco.Size = new System.Drawing.Size(302, 26);
            this.txt_endereco.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(235, 415);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 20);
            this.label3.TabIndex = 8;
            this.label3.Text = "Bairro:";
            // 
            // cbb_uf
            // 
            this.cbb_uf.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.cbb_uf.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbb_uf.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbb_uf.FormattingEnabled = true;
            this.cbb_uf.ItemHeight = 18;
            this.cbb_uf.Location = new System.Drawing.Point(337, 382);
            this.cbb_uf.Name = "cbb_uf";
            this.cbb_uf.Size = new System.Drawing.Size(74, 26);
            this.cbb_uf.TabIndex = 6;
            this.cbb_uf.SelectedIndexChanged += new System.EventHandler(this.cbb_uf_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(333, 358);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(35, 20);
            this.label4.TabIndex = 10;
            this.label4.Text = "UF:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(25, 415);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(63, 20);
            this.label5.TabIndex = 12;
            this.label5.Text = "Cidade:";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // txt_bairro
            // 
            this.txt_bairro.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_bairro.Location = new System.Drawing.Point(239, 438);
            this.txt_bairro.Multiline = true;
            this.txt_bairro.Name = "txt_bairro";
            this.txt_bairro.Size = new System.Drawing.Size(172, 26);
            this.txt_bairro.TabIndex = 8;
            // 
            // cbb_cidade
            // 
            this.cbb_cidade.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbb_cidade.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbb_cidade.FormattingEnabled = true;
            this.cbb_cidade.ItemHeight = 18;
            this.cbb_cidade.Location = new System.Drawing.Point(29, 438);
            this.cbb_cidade.Name = "cbb_cidade";
            this.cbb_cidade.Size = new System.Drawing.Size(204, 26);
            this.cbb_cidade.TabIndex = 7;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(235, 308);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(45, 20);
            this.label6.TabIndex = 14;
            this.label6.Text = "CEP:";
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(25, 470);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(50, 20);
            this.label7.TabIndex = 16;
            this.label7.Text = "Fone:";
            // 
            // txt_inscricao
            // 
            this.txt_inscricao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_inscricao.Location = new System.Drawing.Point(239, 493);
            this.txt_inscricao.Multiline = true;
            this.txt_inscricao.Name = "txt_inscricao";
            this.txt_inscricao.Size = new System.Drawing.Size(172, 25);
            this.txt_inscricao.TabIndex = 10;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(235, 470);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(144, 20);
            this.label8.TabIndex = 20;
            this.label8.Text = "Inscrição Estadual:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(25, 308);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(53, 20);
            this.label9.TabIndex = 18;
            this.label9.Text = "CNPJ:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(308, 578);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(68, 20);
            this.label10.TabIndex = 23;
            this.label10.Text = "Regime:";
            // 
            // cbb_regime
            // 
            this.cbb_regime.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbb_regime.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbb_regime.FormattingEnabled = true;
            this.cbb_regime.ItemHeight = 18;
            this.cbb_regime.Items.AddRange(new object[] {
            "Simples",
            "Normal"});
            this.cbb_regime.Location = new System.Drawing.Point(312, 601);
            this.cbb_regime.Name = "cbb_regime";
            this.cbb_regime.Size = new System.Drawing.Size(99, 26);
            this.cbb_regime.TabIndex = 14;
            // 
            // txt_email
            // 
            this.txt_email.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_email.Location = new System.Drawing.Point(29, 548);
            this.txt_email.Multiline = true;
            this.txt_email.Name = "txt_email";
            this.txt_email.Size = new System.Drawing.Size(227, 25);
            this.txt_email.TabIndex = 11;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(25, 524);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(52, 20);
            this.label11.TabIndex = 24;
            this.label11.Text = "Email:";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(0, 693);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(474, 33);
            this.pictureBox1.TabIndex = 28;
            this.pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(0, -5);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(474, 22);
            this.pictureBox2.TabIndex = 29;
            this.pictureBox2.TabStop = false;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.Red;
            this.label12.Location = new System.Drawing.Point(127, 195);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(20, 25);
            this.label12.TabIndex = 30;
            this.label12.Text = "*";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.ForeColor = System.Drawing.Color.Red;
            this.label14.Location = new System.Drawing.Point(105, 357);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(20, 25);
            this.label14.TabIndex = 32;
            this.label14.Text = "*";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.ForeColor = System.Drawing.Color.Red;
            this.label15.Location = new System.Drawing.Point(365, 357);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(20, 25);
            this.label15.TabIndex = 33;
            this.label15.Text = "*";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.ForeColor = System.Drawing.Color.Red;
            this.label16.Location = new System.Drawing.Point(84, 411);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(20, 25);
            this.label16.TabIndex = 34;
            this.label16.Text = "*";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label17.ForeColor = System.Drawing.Color.Red;
            this.label17.Location = new System.Drawing.Point(286, 413);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(20, 25);
            this.label17.TabIndex = 35;
            this.label17.Text = "*";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label19.ForeColor = System.Drawing.Color.Red;
            this.label19.Location = new System.Drawing.Point(74, 467);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(20, 25);
            this.label19.TabIndex = 37;
            this.label19.Text = "*";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label21.ForeColor = System.Drawing.Color.Red;
            this.label21.Location = new System.Drawing.Point(373, 465);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(20, 25);
            this.label21.TabIndex = 39;
            this.label21.Text = "*";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label23.ForeColor = System.Drawing.Color.Red;
            this.label23.Location = new System.Drawing.Point(373, 576);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(20, 25);
            this.label23.TabIndex = 41;
            this.label23.Text = "*";
            // 
            // button_cnpj
            // 
            this.button_cnpj.FlatAppearance.BorderSize = 0;
            this.button_cnpj.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_cnpj.Image = ((System.Drawing.Image)(resources.GetObject("button_cnpj.Image")));
            this.button_cnpj.Location = new System.Drawing.Point(74, 306);
            this.button_cnpj.Name = "button_cnpj";
            this.button_cnpj.Size = new System.Drawing.Size(29, 25);
            this.button_cnpj.TabIndex = 44;
            this.button_cnpj.UseVisualStyleBackColor = true;
            this.button_cnpj.Click += new System.EventHandler(this.button3_Click);
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label20.ForeColor = System.Drawing.Color.Red;
            this.label20.Location = new System.Drawing.Point(101, 305);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(20, 25);
            this.label20.TabIndex = 43;
            this.label20.Text = "*";
            // 
            // txt_cnae
            // 
            this.txt_cnae.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_cnae.Location = new System.Drawing.Point(262, 548);
            this.txt_cnae.Multiline = true;
            this.txt_cnae.Name = "txt_cnae";
            this.txt_cnae.Size = new System.Drawing.Size(149, 25);
            this.txt_cnae.TabIndex = 12;
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label24.ForeColor = System.Drawing.Color.Red;
            this.label24.Location = new System.Drawing.Point(307, 521);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(20, 25);
            this.label24.TabIndex = 47;
            this.label24.Text = "*";
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label25.Location = new System.Drawing.Point(258, 525);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(57, 20);
            this.label25.TabIndex = 46;
            this.label25.Text = "CNAE:";
            // 
            // label26
            // 
            this.label26.AutoSize = true;
            this.label26.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label26.ForeColor = System.Drawing.Color.Red;
            this.label26.Location = new System.Drawing.Point(158, 576);
            this.label26.Name = "label26";
            this.label26.Size = new System.Drawing.Size(20, 25);
            this.label26.TabIndex = 52;
            this.label26.Text = "*";
            // 
            // textBox2
            // 
            this.textBox2.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.textBox2.Enabled = false;
            this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox2.Location = new System.Drawing.Point(29, 601);
            this.textBox2.Multiline = true;
            this.textBox2.Name = "textBox2";
            this.textBox2.ReadOnly = true;
            this.textBox2.Size = new System.Drawing.Size(275, 25);
            this.textBox2.TabIndex = 13;
            // 
            // label27
            // 
            this.label27.AutoSize = true;
            this.label27.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label27.Location = new System.Drawing.Point(25, 577);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(137, 20);
            this.label27.TabIndex = 50;
            this.label27.Text = "Certificado Digital:";
            // 
            // button_cep
            // 
            this.button_cep.FlatAppearance.BorderSize = 0;
            this.button_cep.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button_cep.Image = ((System.Drawing.Image)(resources.GetObject("button_cep.Image")));
            this.button_cep.Location = new System.Drawing.Point(277, 305);
            this.button_cep.Name = "button_cep";
            this.button_cep.Size = new System.Drawing.Size(29, 25);
            this.button_cep.TabIndex = 54;
            this.button_cep.UseVisualStyleBackColor = true;
            this.button_cep.Click += new System.EventHandler(this.button_cep_Click_1);
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label18.ForeColor = System.Drawing.Color.Red;
            this.label18.Location = new System.Drawing.Point(304, 305);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(20, 25);
            this.label18.TabIndex = 53;
            this.label18.Text = "*";
            // 
            // pictureBox3
            // 
            this.pictureBox3.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox3.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox3.Image")));
            this.pictureBox3.Location = new System.Drawing.Point(357, 41);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(54, 53);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox3.TabIndex = 55;
            this.pictureBox3.TabStop = false;
            this.pictureBox3.Click += new System.EventHandler(this.pictureBox3_Click);
            this.pictureBox3.MouseEnter += new System.EventHandler(this.pictureBox3_MouseEnter);
            this.pictureBox3.MouseLeave += new System.EventHandler(this.pictureBox3_MouseLeave);
            // 
            // button1
            // 
            this.button1.FlatAppearance.BorderSize = 0;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Image = ((System.Drawing.Image)(resources.GetObject("button1.Image")));
            this.button1.Location = new System.Drawing.Point(174, 573);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(39, 27);
            this.button1.TabIndex = 56;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // txt_cep
            // 
            this.txt_cep.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_cep.Location = new System.Drawing.Point(239, 331);
            this.txt_cep.Mask = "00000-999";
            this.txt_cep.Name = "txt_cep";
            this.txt_cep.Size = new System.Drawing.Size(172, 26);
            this.txt_cep.TabIndex = 4;
            this.txt_cep.TextMaskFormat = System.Windows.Forms.MaskFormat.ExcludePromptAndLiterals;
            this.txt_cep.Click += new System.EventHandler(this.txt_cep_Click);
            // 
            // txt_cnpjs
            // 
            this.txt_cnpjs.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_cnpjs.Location = new System.Drawing.Point(29, 331);
            this.txt_cnpjs.Mask = "00,000,000/0000-00";
            this.txt_cnpjs.Name = "txt_cnpjs";
            this.txt_cnpjs.Size = new System.Drawing.Size(204, 26);
            this.txt_cnpjs.TabIndex = 3;
            this.txt_cnpjs.TextMaskFormat = System.Windows.Forms.MaskFormat.ExcludePromptAndLiterals;
            this.txt_cnpjs.Click += new System.EventHandler(this.txt_cnpjs_Click);
            // 
            // txt_fone
            // 
            this.txt_fone.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_fone.Location = new System.Drawing.Point(29, 492);
            this.txt_fone.Mask = "(00) 00000-0000";
            this.txt_fone.Name = "txt_fone";
            this.txt_fone.Size = new System.Drawing.Size(204, 26);
            this.txt_fone.TabIndex = 9;
            this.txt_fone.TextMaskFormat = System.Windows.Forms.MaskFormat.ExcludePromptAndLiterals;
            this.txt_fone.Click += new System.EventHandler(this.txt_fone_Click);
            // 
            // button_ok
            // 
            this.button_ok.BackColor = System.Drawing.Color.Transparent;
            this.button_ok.Image = ((System.Drawing.Image)(resources.GetObject("button_ok.Image")));
            this.button_ok.Location = new System.Drawing.Point(232, 638);
            this.button_ok.Name = "button_ok";
            this.button_ok.Size = new System.Drawing.Size(186, 52);
            this.button_ok.TabIndex = 59;
            this.button_ok.TabStop = false;
            this.button_ok.Click += new System.EventHandler(this.pictureBox4_Click);
            this.button_ok.MouseEnter += new System.EventHandler(this.pictureBox4_MouseEnter);
            this.button_ok.MouseLeave += new System.EventHandler(this.pictureBox4_MouseLeave);
            // 
            // button_cancel
            // 
            this.button_cancel.Image = ((System.Drawing.Image)(resources.GetObject("button_cancel.Image")));
            this.button_cancel.Location = new System.Drawing.Point(29, 638);
            this.button_cancel.Name = "button_cancel";
            this.button_cancel.Size = new System.Drawing.Size(178, 51);
            this.button_cancel.TabIndex = 60;
            this.button_cancel.TabStop = false;
            this.button_cancel.Click += new System.EventHandler(this.pictureBox5_Click);
            this.button_cancel.MouseEnter += new System.EventHandler(this.pictureBox5_MouseEnter);
            this.button_cancel.MouseLeave += new System.EventHandler(this.pictureBox5_MouseLeave);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.ForeColor = System.Drawing.Color.Red;
            this.label13.Location = new System.Drawing.Point(142, 253);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(20, 25);
            this.label13.TabIndex = 61;
            this.label13.Text = "*";
            // 
            // frm_cadastro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(439, 717);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.txt_fone);
            this.Controls.Add(this.txt_cnpjs);
            this.Controls.Add(this.txt_cep);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.button_cep);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.label26);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.label27);
            this.Controls.Add(this.label24);
            this.Controls.Add(this.label25);
            this.Controls.Add(this.txt_cnae);
            this.Controls.Add(this.button_cnpj);
            this.Controls.Add(this.label20);
            this.Controls.Add(this.label23);
            this.Controls.Add(this.label21);
            this.Controls.Add(this.label19);
            this.Controls.Add(this.label17);
            this.Controls.Add(this.label16);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.txt_email);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.cbb_regime);
            this.Controls.Add(this.txt_inscricao);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.cbb_cidade);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txt_bairro);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cbb_uf);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txt_endereco);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_fantasia);
            this.Controls.Add(this.razao);
            this.Controls.Add(this.txt_razao);
            this.Controls.Add(this.pic_Antares);
            this.Controls.Add(this.button_ok);
            this.Controls.Add(this.button_cancel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frm_cadastro";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "AntaresERP";
            this.Load += new System.EventHandler(this.frm_cadastro_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pic_Antares)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.button_ok)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.button_cancel)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pic_Antares;
        private System.Windows.Forms.TextBox txt_razao;
        private System.Windows.Forms.Label razao;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_fantasia;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_endereco;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbb_uf;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txt_bairro;
        private System.Windows.Forms.ComboBox cbb_cidade;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txt_inscricao;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cbb_regime;
        private System.Windows.Forms.TextBox txt_email;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Button button_cnpj;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.TextBox txt_cnae;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label27;
        private System.Windows.Forms.Button button_cep;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.MaskedTextBox txt_cep;
        private System.Windows.Forms.MaskedTextBox txt_cnpjs;
        private System.Windows.Forms.MaskedTextBox txt_fone;
        private System.Windows.Forms.PictureBox button_ok;
        private System.Windows.Forms.PictureBox button_cancel;
        private System.Windows.Forms.Label label13;
    }
}

