function outdata = AR(indata)


    qe   = indata.qe;           % W
    pe   = indata.pe;           % bar
    pc   = indata.pc;           % bar
    ta   = indata.ta;           % C
    pg1  = indata.pg1;          % bar
    tg1  = indata.tg1;          % C
    tg2  = indata.tg2;          % C
    eta1 = indata.eta1;
    eta2 = indata.eta2;



    %% EQs
    te = XSteam('Tsat_p',pe);
pa = pe;

tc = XSteam('Tsat_p',pc);
pg2 = pc;

xw = Tc(XSteam('Tsat_p',pa),ta);

xs1 = Tc(XSteam('Tsat_p',pg1),tg1);

xs2 = Tc(XSteam('Tsat_p',pg2),tg2);

h15 = XSteam('hL_T',tc);
h16 = h15;

h17 = XSteam('hV_T',te);

h12 = XSteam('hL_T',tg1);
h13 = h12;

h1 = htx(ta,xw);
h2 = h1;

h5 = htx(tg1,xs1);

h8 = htx(tg2,xs2);

h92 = htx(ta,xs2);
h9 = h8 - eta1*(h8-h92);
h10 = h9;

mr = qe / (h17-h16);
mw = mr / (1-(xw/xs2));
m5 = mw * (xw/xs1);
m11 = mw * (1- xw/xs1);
m8 = m5 * (xs1/xs2);
m14 = mw * ((xw/xs1)-(xw/xs2));

h3 = h2 + (m8/mw) * (h8-h9);
t3 = XSteam('T_ph',pg1,h3);
h63 = htx(t3,xs1);
h6 = h5 - eta2*(h5-h63);
h7 = h8;
h4 = h3 + (m5/mw)*(h5-h6);
h11 = XSteam('hV_T',tg1);
h14 = XSteam('hV_T',tg2);

Qg1 = m5*h5 + m11*h11 - mw*h4;
COP = qe/Qg1;

    
%% Pack the Output data into a structure

   outdata.COP    = COP;
   outdata.Qg1    = Qg1;
