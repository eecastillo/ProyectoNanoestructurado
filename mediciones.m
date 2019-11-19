function mediciones

    % Creacion de la ventana de interfaz
    f = uifigure('Name','Mediciones Impedancia');
    title = uilabel(f,'Text','Mediciones de impedancia');
    title.FontSize = 18;
    title.FontWeight = 'bold';
    title.Position = [175 300 300 150];

    % Creacion del arbol de informacion
    t = uitree(f,'Position',[175 50 250 270]);

    % Current folder with the information 
    currentFolder           = pwd;
    % Assign Tree callback in response to node selection
    t.SelectionChangedFcn   = @nodechange;

    % FIRST LEVEL NODES
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    calibracion = uitreenode(t,'Text','Calibracion',        'NodeData',[]);
    pasivos     = uitreenode(t,'Text','Componentes Pasivos','NodeData',[]);
    electrodos  = uitreenode(t,'Text','Electrodos',         'NodeData',[]);
    cobre       = uitreenode(t,'Text','Laminas de Cobre',   'NodeData',[]);
    laton       = uitreenode(t,'Text','Laminas de Laton',   'NodeData',[]);
    oro         = uitreenode(t,'Text','Oro Plano',          'NodeData',[]);
    piel        = uitreenode(t,'Text','Piel',               'NodeData',[]);
    platino     = uitreenode(t,'Text','Platino NW',         'NodeData',[]);
    sistema     = uitreenode(t,'Text','Sistema',            'NodeData',[]);

    % SECOND LEVEL NODES
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %   Category of Calibracion
    calibrado   = uitreenode(calibracion,'Text','Calibrado',            'NodeData',[]);
    r100        = uitreenode(calibracion,'Text','Resistencia 100 Ohms', 'NodeData',['R100']);
    r1k         = uitreenode(calibracion,'Text','Resistencia 1 kOhms',  'NodeData',['R1K']);
    r10k        = uitreenode(calibracion,'Text','Resistencia 10 kOhms', 'NodeData',['R10K']);
    r100k       = uitreenode(calibracion,'Text','Resistencia 100 kOhms','NodeData',['R100K']);
    
    %   Category of Electrodos
    puntas2_pasivos = uitreenode(pasivos,'Text','2 puntas', 'NodeData',[]);
    puntas4_pasivos = uitreenode(pasivos,'Text','4 puntas', 'NodeData',[]);
        
    %   Category of Pasivos
    puntas2_electrodos = uitreenode(electrodos,'Text','2 puntas', 'NodeData',[]);
    puntas4_electrodos = uitreenode(electrodos,'Text','4 puntas', 'NodeData',[]);
    
    %   Category of Cobre
    puntas2_cobre = uitreenode(cobre,'Text','2 puntas', 'NodeData',[]);
    
    %   Category of Laton
    puntas2_laton = uitreenode(laton,'Text','2 puntas', 'NodeData',[]);
    
    %   Category of Oro
    h2o2_0_oro  = uitreenode(oro,'Text','H2O2 0',   'NodeData',['H2O2 0 oro']);
    h2o2_1_oro  = uitreenode(oro,'Text','H2O2 1',   'NodeData',['H2O2 1 oro']);
    h2o2_2_oro  = uitreenode(oro,'Text','H2O2 2',   'NodeData',['H2O2 2 oro']);
    h2o2_3_oro  = uitreenode(oro,'Text','H2O2 3',   'NodeData',['H2O2 3 oro']);
    h2o2_4_oro  = uitreenode(oro,'Text','H2O2 4',   'NodeData',['H2O2 4 oro']);
    h2o2_5_oro  = uitreenode(oro,'Text','H2O2 5',   'NodeData',['H2O2 5 oro']);
    h2o2_6_oro  = uitreenode(oro,'Text','H2O2 6',   'NodeData',['H2O2 6 oro']);
    h2o2_7_oro  = uitreenode(oro,'Text','H2O2 7',   'NodeData',['H2O2 7 oro']);
    h2o2_8_oro  = uitreenode(oro,'Text','H2O2 8',   'NodeData',['H2O2 8 oro']);
    h2o2_9_oro  = uitreenode(oro,'Text','H2O2 9',   'NodeData',['H2O2 9 oro']);
    h2o2_10_oro = uitreenode(oro,'Text','H2O2 10',  'NodeData',['H2O2 10 oro']);
    h2o2_11_oro = uitreenode(oro,'Text','H2O2 11',  'NodeData',['H2O2 11 oro']);
    h2o2_12_oro = uitreenode(oro,'Text','H2O2 12',  'NodeData',['H2O2 12 oro']);
    h2o2_13_oro = uitreenode(oro,'Text','H2O2 13',  'NodeData',['H2O2 13 oro']);
    h2o2_14_oro = uitreenode(oro,'Text','H2O2 14',  'NodeData',['H2O2 14 oro']);
    h2o2_15_oro = uitreenode(oro,'Text','H2O2 15',  'NodeData',['H2O2 15 oro']);
    h2o2_16_oro = uitreenode(oro,'Text','H2O2 16',  'NodeData',['H2O2 16 oro']);
    h2o2_17_oro = uitreenode(oro,'Text','H2O2 17',  'NodeData',['H2O2 17 oro']);
    
    %   Categort of Piel
    piel1 = uitreenode(piel,'Text','Piel 1', 'NodeData',['Piel 1']);
    piel2 = uitreenode(piel,'Text','Piel 2', 'NodeData',['Piel 2']);
    
    %   Category of Platino
    h2o2_0_pla  = uitreenode(platino,'Text','H2O2 0',     'NodeData',['H2O2 0 pla']);
    h2o2_1_pla  = uitreenode(platino,'Text','H2O2 1',     'NodeData',['H2O2 1 pla']);
    h2o2_2_pla  = uitreenode(platino,'Text','H2O2 2',     'NodeData',['H2O2 2 pla']);
    h2o2_3_pla  = uitreenode(platino,'Text','H2O2 3',     'NodeData',['H2O2 3 pla']);
    h2o2_4_pla  = uitreenode(platino,'Text','H2O2 4',     'NodeData',['H2O2 4 pla']);
    h2o2_5_pla  = uitreenode(platino,'Text','H2O2 5',     'NodeData',['H2O2 5 pla']);
    h2o2_6_pla  = uitreenode(platino,'Text','H2O2 6',     'NodeData',['H2O2 6 pla']);
    h2o2_7_pla  = uitreenode(platino,'Text','H2O2 7',     'NodeData',['H2O2 7 pla']);
    h2o2_8_pla  = uitreenode(platino,'Text','H2O2 8',     'NodeData',['H2O2 8 pla']);
    h2o2_9_pla  = uitreenode(platino,'Text','H2O2 9',     'NodeData',['H2O2 9 pla']);
    h2o2_10_pla = uitreenode(platino,'Text','H2O2 10',    'NodeData',['H2O2 10 pla']);
    h2o2_11_pla = uitreenode(platino,'Text','H2O2 11',    'NodeData',['H2O2 11 pla']);
    h2o2_12_pla = uitreenode(platino,'Text','H2O2 12',    'NodeData',['H2O2 12 pla']);
    h2o2_13_pla = uitreenode(platino,'Text','H2O2 13',    'NodeData',['H2O2 13 pla']);
    h2o2_14_pla = uitreenode(platino,'Text','H2O2 14',    'NodeData',['H2O2 14 pla']);
    h2o2_15_pla = uitreenode(platino,'Text','H2O2 15',    'NodeData',['H2O2 15 pla']);
    
    %   Category of Sistema
    calibrado_sistema   = uitreenode(sistema,'Text','Calibrado',    'NodeData',[]);
    systemz1            = uitreenode(sistema,'Text','System Z1',    'NodeData',['System Z1']);
    systemz2            = uitreenode(sistema,'Text','System Z2',    'NodeData',['System Z2']);
    systemz3            = uitreenode(sistema,'Text','System Z3',    'NodeData',['System Z3']);
    
    % THIRD LEVEL NODES
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %   Category of Calibracion->Calibrado
    r100kohms = uitreenode(calibrado,'Text','Resistencia 100kOhms', 'NodeData',['calibracion_calibrado100k']);
    
    %   Category of Pasivos->2 puntas
    frequency1to1k_2puntas      = uitreenode(puntas2_pasivos,'Text','Frecuencia 1Hz-1kHz',      'NodeData',[]);
    frequency1kto1M_2puntas     = uitreenode(puntas2_pasivos,'Text','Frecuencia 1kHz-1MHz',     'NodeData',[]);
    frequency100to100k_2puntas  = uitreenode(puntas2_pasivos,'Text','Frecuencia 100Hz-100kHz',  'NodeData',[]);
    %   Category of Pasivos->4 puntas
    frequency1kto100k_4puntas   = uitreenode(puntas4_pasivos,'Text','Frecuencia 1kHz-100kHz',   'NodeData',[]);
    frequency100to100k_4puntas  = uitreenode(puntas4_pasivos,'Text','Frecuencia 100Hz-100kHz',  'NodeData',[]);

    %   Category of Electrodos->2 puntas
    ferroceno = uitreenode(puntas2_electrodos,'Text','Ferroceno', 'NodeData',['Ferroceno_electrodos']);
    %   Category of Electrodos->4 puntas
    ferroceno_pt = uitreenode(puntas4_electrodos,'Text','Ferroceno_PT', 'NodeData',['Ferroceno_PT']);

    %   Category of Cobre->2 puntas
    cobre_10mm  = uitreenode(puntas2_cobre,'Text','10mM',       'NodeData',['10mM']);
    cobre_40mm  = uitreenode(puntas2_cobre,'Text','40mM',       'NodeData',['40mM']);
    cobre_50mm  = uitreenode(puntas2_cobre,'Text','50mM',       'NodeData',['50mM']);
    buffer      = uitreenode(puntas2_cobre,'Text','Buffer',     'NodeData',['Buffer']);
    cobre_cobre = uitreenode(puntas2_cobre,'Text','Cobre',      'NodeData',['Cobre']);
    cobre_ferro = uitreenode(puntas2_cobre,'Text','Ferroceno',  'NodeData',['Feroceno_cobre']);
    
    %   Category of Laton->2 puntas
    laton_ferro = uitreenode(puntas2_laton,'Text','Ferroceno',  'NodeData',['Feroceno_laton']);
    
    %   Category of Sistema->Calibrado
    electrodo1 = uitreenode(calibrado_sistema,'Text','Electrodo 1', 'NodeData',[]);
    electrodo2 = uitreenode(calibrado_sistema,'Text','Electrodo 2', 'NodeData',[]);
    electrodo3 = uitreenode(calibrado_sistema,'Text','Electrodo 3', 'NodeData',[]);
    
    
    % FOURTH LEVEL NODES
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %   Category of Pasivos->2 Puntas->Frequency 1Hz to 1kHz
    cap1mf_1to1k_2puntas    = uitreenode(frequency1to1k_2puntas,'Text','Capacitor 1mF',     'NodeData',['cap1mf_1to1k_2puntas']);
    cap1uf_1to1k_2puntas    = uitreenode(frequency1to1k_2puntas,'Text','Capacitor 1uF',     'NodeData',['cap1uf_1to1k_2puntas']);
    cap10uf_1to1k_2puntas   = uitreenode(frequency1to1k_2puntas,'Text','Capacitor 10uF',    'NodeData',['cap10uf_1to1k_2puntas']);
    cap47uf_1to1k_2puntas   = uitreenode(frequency1to1k_2puntas,'Text','Capacitor 47uF',    'NodeData',['cap47uf_1to1k_2puntas']);
    cap100nf_1to1k_2puntas  = uitreenode(frequency1to1k_2puntas,'Text','Capacitor 100nF',   'NodeData',['cap100nf_1to1k_2puntas']);
    cap100uf_1to1k_2puntas  = uitreenode(frequency1to1k_2puntas,'Text','Capacitor 100uF',   'NodeData',['cap100uf_1to1k_2puntas']);
    ind1_5mh_1to1k_2puntas  = uitreenode(frequency1to1k_2puntas,'Text','Inductor 1.5mH',    'NodeData',['ind1_5mh_1to1k_2puntas']);
    ind1mh_1to1k_2puntas    = uitreenode(frequency1to1k_2puntas,'Text','Inductor 1mH',      'NodeData',['ind1mh_1to1k_2puntas']);
    ind4_7mh_1to1k_2puntas  = uitreenode(frequency1to1k_2puntas,'Text','Inductor 4.7mH',    'NodeData',['ind4_7mh_1to1k_2puntas']);
    ind12mh_1to1k_2puntas   = uitreenode(frequency1to1k_2puntas,'Text','Inductor 12mH',     'NodeData',['ind12mh_1to1k_2puntas']);
    ind15mh_1to1k_2puntas   = uitreenode(frequency1to1k_2puntas,'Text','Inductor 15mH',     'NodeData',['ind15mh_1to1k_2puntas']);
    res1k_1to1k_2puntas     = uitreenode(frequency1to1k_2puntas,'Text','Resistor 1 kOhm',   'NodeData',['res1k_1to1k_2puntas']);
    res10k_1to1k_2puntas    = uitreenode(frequency1to1k_2puntas,'Text','Resistor 10 kOhms', 'NodeData',['res10k_1to1k_2puntas']);
    res100_1to1k_2puntas    = uitreenode(frequency1to1k_2puntas,'Text','Resistor 100 Ohms', 'NodeData',['res100_1to1k_2puntas']);
    res100k_1to1k_2puntas   = uitreenode(frequency1to1k_2puntas,'Text','Resistor 100 kOhms','NodeData',['res100k_1to1k_2puntas']);
    
    %   Category of Pasivos->2 Puntas->Frequency 1kHz to 1MHz
    cap1mf_1kto1m_2puntas    = uitreenode(frequency1kto1M_2puntas,'Text','Capacitor 1mF',     'NodeData',['cap1mf_1kto1m_2puntas']);
    cap1uf_1kto1m_2puntas    = uitreenode(frequency1kto1M_2puntas,'Text','Capacitor 1uF',     'NodeData',['cap1uf_1kto1m_2puntas']);
    cap10uf_1kto1m_2puntas   = uitreenode(frequency1kto1M_2puntas,'Text','Capacitor 10uF',    'NodeData',['cap10uf_1kto1m_2puntas']);
    cap47uf_1kto1m_2puntas   = uitreenode(frequency1kto1M_2puntas,'Text','Capacitor 47uF',    'NodeData',['cap47uf_1kto1m_2puntas']);
    cap100nf_1kto1m_2puntas  = uitreenode(frequency1kto1M_2puntas,'Text','Capacitor 100nF',   'NodeData',['cap100nf_1kto1m_2puntas']);
    cap100uf_1kto1m_2puntas  = uitreenode(frequency1kto1M_2puntas,'Text','Capacitor 100uF',   'NodeData',['cap100uf_1kto1m_2puntas']);
    ind1_5mh_1kto1m_2puntas  = uitreenode(frequency1kto1M_2puntas,'Text','Inductor 1.5mH',    'NodeData',['ind1_5mh_1kto1m_2puntas']);
    ind1mh_1kto1m_2puntas    = uitreenode(frequency1kto1M_2puntas,'Text','Inductor 1mH',      'NodeData',['ind1mh_1kto1m_2puntas']);
    ind4_7mh_1kto1m_2puntas  = uitreenode(frequency1kto1M_2puntas,'Text','Inductor 4.7mH',    'NodeData',['ind4_7mh_1kto1m_2puntas']);
    ind12mh_1kto1m_2puntas   = uitreenode(frequency1kto1M_2puntas,'Text','Inductor 12mH',     'NodeData',['ind12mh_1kto1m_2puntas']);
    ind15mh_1kto1m_2puntas   = uitreenode(frequency1kto1M_2puntas,'Text','Inductor 15mH',     'NodeData',['ind15mh_1kto1m_2puntas']);
    res1k_1kto1m_2puntas     = uitreenode(frequency1kto1M_2puntas,'Text','Resistor 1 kOhm',   'NodeData',['res1k_1kto1m_2puntas']);
    res10k_1kto1m_2puntas    = uitreenode(frequency1kto1M_2puntas,'Text','Resistor 10 kOhms', 'NodeData',['res10k_1kto1m_2puntas']);
    res100_1kto1m_2puntas    = uitreenode(frequency1kto1M_2puntas,'Text','Resistor 100 Ohms', 'NodeData',['res100_1kto1m_2puntas']);
    res100k_1kto1m_2puntas   = uitreenode(frequency1kto1M_2puntas,'Text','Resistor 100 kOhms','NodeData',['res100k_1kto1m_2puntas']);
    
    %   Category of Pasivos->2 Puntas->Frequency 100Hz to 100kHz
    cap1mf_100to100k_2puntas    = uitreenode(frequency100to100k_2puntas,'Text','Capacitor 1mF',     'NodeData',['cap1mf_100to100k_2puntas']);
    cap1uf_100to100k_2puntas    = uitreenode(frequency100to100k_2puntas,'Text','Capacitor 1uF',     'NodeData',['cap1uf_100to100k_2puntas']);
    cap10uf_100to100k_2puntas   = uitreenode(frequency100to100k_2puntas,'Text','Capacitor 10uF',    'NodeData',['cap10uf_100to100k_2puntas']);
    cap47uf_100to100k_2puntas   = uitreenode(frequency100to100k_2puntas,'Text','Capacitor 47uF',    'NodeData',['cap47uf_100to100k_2puntas']);
    cap100nf_100to100k_2puntas  = uitreenode(frequency100to100k_2puntas,'Text','Capacitor 100nF',   'NodeData',['cap100nf_100to100k_2puntas']);
    cap100uf_100to100k_2puntas  = uitreenode(frequency100to100k_2puntas,'Text','Capacitor 100uF',   'NodeData',['cap100uf_100to100k_2puntas']);
    ind1_5mh_100to100k_2puntas  = uitreenode(frequency100to100k_2puntas,'Text','Inductor 1.5mH',    'NodeData',['ind1_5mh_100to100k_2puntas']);
    ind1mh_100to100k_2puntas    = uitreenode(frequency100to100k_2puntas,'Text','Inductor 1mH',      'NodeData',['ind1mh_100to100k_2puntas']);
    ind4_7mh_100to100k_2puntas  = uitreenode(frequency100to100k_2puntas,'Text','Inductor 4.7mH',    'NodeData',['ind4_7mh_100to100k_2puntas']);
    ind12mh_100to100k_2puntas   = uitreenode(frequency100to100k_2puntas,'Text','Inductor 12mH',     'NodeData',['ind12mh_100to100k_2puntas']);
    ind15mh_100to100k_2puntas   = uitreenode(frequency100to100k_2puntas,'Text','Inductor 15mH',     'NodeData',['ind15mh_100to100k_2puntas']);
    res1k_100to100k_2puntas     = uitreenode(frequency100to100k_2puntas,'Text','Resistor 1 kOhm',   'NodeData',['res1k_100to100k_2puntas']);
    res10k_100to100k_2puntas    = uitreenode(frequency100to100k_2puntas,'Text','Resistor 10 kOhms', 'NodeData',['res10k_100to100k_2puntas']);
    res100_100to100k_2puntas    = uitreenode(frequency100to100k_2puntas,'Text','Resistor 100 Ohms', 'NodeData',['res100_100to100k_2puntas']);
    res100k_100to100k_2puntas   = uitreenode(frequency100to100k_2puntas,'Text','Resistor 100 kOhms','NodeData',['res100k_100to100k_2puntas']);

    
    %   Category of Pasivos->4 Puntas->Frequency 1kHz to 100kHz
    cap1mf_1kto100k_4puntas     = uitreenode(frequency1kto100k_4puntas,'Text','Capacitor 1mF',     'NodeData',['cap1mf_1kto100k_4puntas']);
    ind15mh_1kto100k_4puntas    = uitreenode(frequency1kto100k_4puntas,'Text','Inductor 15mH',     'NodeData',['ind15mh_1kto100k_4puntas']);

    %   Category of Pasivos->4 Puntas->Frequency 100Hz to 100kHz
    cap1uf_100to100k_4puntas    = uitreenode(frequency100to100k_4puntas,'Text','Capacitor 1uF',     'NodeData',['cap1uf_100to100k_4puntas']);
    cap10uf_100to100k_4puntas   = uitreenode(frequency100to100k_4puntas,'Text','Capacitor 10uF',    'NodeData',['cap10uf_100to100k_4puntas']);
    cap100nf_100to100k_4puntas  = uitreenode(frequency100to100k_4puntas,'Text','Capacitor 100nF',   'NodeData',['cap100nf_100to100k_4puntas']);
    cap100uf_100to100k_4puntas  = uitreenode(frequency100to100k_4puntas,'Text','Capacitor 100uF',   'NodeData',['cap100uf_100to100k_4puntas']);
    ind1_5mh_100to100k_4puntas  = uitreenode(frequency100to100k_4puntas,'Text','Inductor 1.5mH',    'NodeData',['ind1_5mh_100to100k_4puntas']);
    ind1mh_100to100k_4puntas    = uitreenode(frequency100to100k_4puntas,'Text','Inductor 1mH',      'NodeData',['ind1mh_100to100k_4puntas']);
    ind4_7mh_100to100k_4puntas  = uitreenode(frequency100to100k_4puntas,'Text','Inductor 4.7mH',    'NodeData',['ind4_7mh_100to100k_4puntas']);
    ind12mh_100to100k_4puntas   = uitreenode(frequency100to100k_4puntas,'Text','Inductor 12mH',     'NodeData',['ind12mh_100to100k_4puntas']);
    res1k_100to100k_4puntas     = uitreenode(frequency100to100k_4puntas,'Text','Resistor 1 kOhm',   'NodeData',['res1k_100to100k_4puntas']);
    res10k_100to100k_4puntas    = uitreenode(frequency100to100k_4puntas,'Text','Resistor 10 kOhms', 'NodeData',['res10k_100to100k_4puntas']);
    res100_100to100k_4puntas    = uitreenode(frequency100to100k_4puntas,'Text','Resistor 100 Ohms', 'NodeData',['res100_100to100k_4puntas']);
    res100k_100to100k_4puntas   = uitreenode(frequency100to100k_4puntas,'Text','Resistor 100 kOhms','NodeData',['res100k_100to100k_4puntas']);

    %   Category of System->Calibrado->Electrodo_1
    electrodo1_1 = uitreenode(electrodo1,'Text','Z1 1', 'NodeData',['Z1 1']);
    electrodo1_2 = uitreenode(electrodo1,'Text','Z1 2', 'NodeData',['Z1 2']);
    electrodo1_3 = uitreenode(electrodo1,'Text','Z1 3', 'NodeData',['Z1 3']);

    %   Category of System->Calibrado->Electrodo_2
    electrodo2_1 = uitreenode(electrodo2,'Text','Z2 1', 'NodeData',['Z2 1']);
    electrodo2_2 = uitreenode(electrodo2,'Text','Z2 2', 'NodeData',['Z2 2']);
    electrodo2_3 = uitreenode(electrodo2,'Text','Z2 3', 'NodeData',['Z2 3']);
    
    %   Category of System->Calibrado->Electrodo_3
    electrodo3_1 = uitreenode(electrodo3,'Text','Z3 1', 'NodeData',['Z3 1']);
    electrodo3_2 = uitreenode(electrodo3,'Text','Z3 2', 'NodeData',['Z3 2']);
    electrodo3_3 = uitreenode(electrodo3,'Text','Z3 3', 'NodeData',['Z3 3']);
    
    % Expand the tree
    expand(t);
    
    % DISPLAY CHARTS
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    function nodechange(src,event)
        node = event.SelectedNodes;
        
        if~(isempty(node.NodeData))
            switch node.NodeData
                case 'calibracion_calibrado100k'
                    print(strcat(pwd,'\Calibracion\Calibrado\R_100k.log'),4);
                case 'R100'
                    print(strcat(pwd,'\Calibracion\R_100.log'),4);
                case 'R1K'
                    print(strcat(pwd,'\Calibracion\R_1k.log'),4);
                case 'R10K'
                    print(strcat(pwd,'\Calibracion\R_10k.log'),4);
                case 'R100K'
                    print(strcat(pwd,'\Calibracion\R_100k.log'),4);
                case 'Ferroceno_electrodos'
                    print(strcat(pwd,'\Electrodos\2 Puntas\Ferroceno.log'),2);
                case 'Ferroceno_PT'
                    print(strcat(pwd,'\Electrodos\4 Puntas\Ferroceno_PT.log'),4);
                case 'H2O2 0 oro'
                    print(strcat(pwd,'\Oro Plano\0_H2O2.log'),4);
                case 'H2O2 1 oro'
                    print(strcat(pwd,'\Oro Plano\1_H2O2.log'),4);
                case 'H2O2 2 oro'
                    print(strcat(pwd,'\Oro Plano\2_H2O2.log'),4);
                case 'H2O2 3 oro'
                    print(strcat(pwd,'\Oro Plano\3_H2O2.log'),4);
                case 'H2O2 4 oro'
                    print(strcat(pwd,'\Oro Plano\4_H2O2.log'),4);
                case 'H2O2 5 oro'
                    print(strcat(pwd,'\Oro Plano\5_H2O2.log'),4);
                case 'H2O2 6 oro'
                    print(strcat(pwd,'\Oro Plano\6_H2O2.log'),4);
                case 'H2O2 7 oro'
                    print(strcat(pwd,'\Oro Plano\7_H2O2.log'),4);
                case 'H2O2 8 oro'
                    print(strcat(pwd,'\Oro Plano\8_H2O2.log'),4);
                case 'H2O2 9 oro'
                    print(strcat(pwd,'\Oro Plano\9_H2O2.log'),4);
                case 'H2O2 10 oro'
                    print(strcat(pwd,'\Oro Plano\10_H2O2.log'),4);
                case 'H2O2 11 oro'
                    print(strcat(pwd,'\Oro Plano\11_H2O2.log'),4);
                case 'H2O2 12 oro'
                    print(strcat(pwd,'\Oro Plano\12_H2O2.log'),4);
                case 'H2O2 13 oro'
                    print(strcat(pwd,'\Oro Plano\13_H2O2.log'),4);
                case 'H2O2 14 oro'
                    print(strcat(pwd,'\Oro Plano\14_H2O2.log'),4);
                case 'H2O2 15 oro'
                    print(strcat(pwd,'\Oro Plano\15_H2O2.log'),4);
                case 'H2O2 16 oro'
                    print(strcat(pwd,'\Oro Plano\16_H2O2.log'),4);
                case 'H2O2 17 oro'
                    print(strcat(pwd,'\Oro Plano\17_H2O2.log'),4);
                case 'Piel 1'
                    imshow(strcat(pwd,'\Piel\Piel_1.png'));
                case 'Piel 2'
                    imshow(strcat(pwd,'\Piel\Piel_2.png'));
                case 'H2O2 0 pla'
                    print(strcat(pwd,'\Platino NW\0_H2O2.log'),4);
                case 'H2O2 1 pla'
                    print(strcat(pwd,'\Platino NW\1_H2O2.log'),4);
                case 'H2O2 2 pla'
                    print(strcat(pwd,'\Platino NW\2_H2O2.log'),4);
                case 'H2O2 3 pla'
                    print(strcat(pwd,'\Platino NW\3_H2O2.log'),4);
                case 'H2O2 4 pla'
                    print(strcat(pwd,'\Platino NW\4_H2O2.log'),4);
                case 'H2O2 5 pla'
                    print(strcat(pwd,'\Platino NW\5_H2O2.log'),4);
                case 'H2O2 6 pla'
                    print(strcat(pwd,'\Platino NW\6_H2O2.log'),4);
                case 'H2O2 7 pla'
                    print(strcat(pwd,'\Platino NW\7_H2O2.log'),4);
                case 'H2O2 8 pla'
                    print(strcat(pwd,'\Platino NW\8_H2O2.log'),4);
                case 'H2O2 9 pla'
                    print(strcat(pwd,'\Platino NW\9_H2O2.log'),4);
                case 'H2O2 10 pla'
                    print(strcat(pwd,'\Platino NW\10_H2O2.log'),4);
                case 'H2O2 11 pla'
                    print(strcat(pwd,'\Platino NW\11_H2O2.log'),4);
                case 'H2O2 12 pla'
                    print(strcat(pwd,'\Platino NW\12_H2O2.log'),4);
                case 'H2O2 13 pla'
                    print(strcat(pwd,'\Platino NW\13_H2O2.log'),4);
                case 'H2O2 14 pla'
                    print(strcat(pwd,'\Platino NW\14_H2O2.log'),4);
                case 'H2O2 15 pla'
                    print(strcat(pwd,'\Platino NW\15_H2O2.log'),4);  
                case 'System Z1'
                    print(strcat(pwd,'\Sistema\SystemZ_1.log'),4); 
                case 'System Z2'
                    print(strcat(pwd,'\Sistema\SystemZ_2.log'),4); 
                case 'System Z3'
                    print(strcat(pwd,'\Sistema\SystemZ_3.log'),4); 
                case '10mM'
                    print(strcat(pwd,'\Lamina de Cobre\2 Puntas\10mM.log'),2);
                case '40mM'
                    print(strcat(pwd,'\Lamina de Cobre\2 Puntas\40mM.log'),2);
                case '50mM'
                    print(strcat(pwd,'\Lamina de Cobre\2 Puntas\50mM.log'),2);
                case 'Buffer'
                    print(strcat(pwd,'\Lamina de Cobre\2 Puntas\BUFFER.log'),2);
                case 'Cobre'
                    print(strcat(pwd,'\Lamina de Cobre\2 Puntas\Cobre.log'),2);
                case 'Feroceno_cobre'
                    print(strcat(pwd,'\Lamina de Cobre\2 Puntas\Ferroceno.log'),2);
                case 'Feroceno_laton'
                    print(strcat(pwd,'\Lamina de Laton\2 Puntas\Ferroceno.log'),2);
                case 'Z1 1'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_1\Z_1-1.log'),4);
                case 'Z1 2'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_1\Z_1-2.log'),4);
                case 'Z1 3'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_1\Z_1-3.log'),4);
                case 'Z2 1'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_2\Z_2-1.log'),4);
                case 'Z2 2'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_2\Z_2-2.log'),4);
                case 'Z2 3'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_2\Z_2-3.log'),4);
                case 'Z3 1'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_3\Z_3-1.log'),4);
                case 'Z3 2'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_3\Z_3-2.log'),4);
                case 'Z3 3'
                    print(strcat(pwd,'\Sistema\Calibrado\Electrodo_3\Z_3-3.log'),4);
                case 'cap1mf_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\capacitor1mf.png'));
                case 'cap1uf_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\capacitor1uf.png'));
                case 'cap10uf_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\capacitor10uf.png'));
                case 'cap47uf_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\capacitor47uf.png'));
                case 'cap100nf_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\capacitor100nf.png'));
                case 'cap100uf_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\capacitor100uf.png'));
                case 'ind1_5mh_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\inductor1_5mh.png'));
                case 'ind1mh_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\inductor1mh.png'));
                case 'ind4_7mh_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\inductor4_7mh.png'));
                case 'ind12mh_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\inductor12mh.png'));
                case 'ind15mh_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\inductor15mh.png'));
                case 'res1k_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\resistor1k.png'));
                case 'res10k_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\resistor10k.png'));
                case 'res100_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\resistor100.png'));
                case 'res100k_1to1k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1Hz1kHz\resistor100k.png'));
                case 'cap1mf_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\capacitor1mf.png'));
                case 'cap1uf_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\capacitor1uf.png'));
                case 'cap10uf_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\capacitor10uf.png'));
                case 'cap47uf_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\capacitor47uf.png'));
                case 'cap100nf_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\capacitor100nf.png'));
                case 'cap100uf_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\capacitor100uf.png'));
                case 'ind1_5mh_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\inductor1_5mh.png'));
                case 'ind1mh_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\inductor1mh.png'));
                case 'ind4_7mh_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\inductor4_7mh.png'));
                case 'ind12mh_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\inductor12mh.png'));
                case 'ind15mh_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\inductor15mh.png'));
                case 'res1k_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\resistor1k.png'));
                case 'res10k_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\resistor10k.png'));
                case 'res100_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\resistor100.png'));
                case 'res100k_1kto1m_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency1kHz1MHz\resistor100k.png'));
                case 'cap1mf_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\capacitor1mf.png'));
                case 'cap1uf_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\capacitor1uf.png'));
                case 'cap10uf_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\capacitor10uf.png'));
                case 'cap47uf_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\capacitor47uf.png'));
                case 'cap100nf_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\capacitor100nf.png'));
                case 'cap100uf_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\capacitor100uf.png'));
                case 'ind1_5mh_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\inductor1_5mh.png'));
                case 'ind1mh_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\inductor1mh.png'));
                case 'ind4_7mh_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\inductor4_7mh.png'));
                case 'ind12mh_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\inductor12mh.png'));
                case 'ind15mh_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\inductor15mh.png'));
                case 'res1k_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\resistor1k.png'));
                case 'res10k_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\resistor10k.png'));
                case 'res100_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\resistor100.png'));
                case 'res100k_100to100k_2puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\2 Puntas\Frequency100Hz100kHz\resistor100k.png'));
                case 'cap1mf_1kto100k_4puntas'%%
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency1kHz100kHz\capacitor1mf.png'));
                case 'cap1uf_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\capacitor1uf.png'));
                case 'cap10uf_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\capacitor10uf.png'));
                case 'cap47uf_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\capacitor47uf.png'));
                case 'cap100nf_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\capacitor100nf.png'));
                case 'cap100uf_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\capacitor100uf.png'));
                case 'ind1_5mh_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\inductor1_5mh.png'));
                case 'ind1mh_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\inductor1mh.png'));
                case 'ind4_7mh_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\inductor4_7mh.png'));
                case 'ind12mh_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\inductor12mh.png'));
                case 'ind15mh_1kto100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency1kHz100kHz\inductor15mh.png'));
                case 'res1k_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\resistor1k.png'));
                case 'res10k_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\resistor10k.png'));
                case 'res100_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\resistor100.png'));
                case 'res100k_100to100k_4puntas'
                    imshow(strcat(pwd,'\Componentes Pasivos\4 Puntas\Frequency100Hz100kHz\resistor100k.png'));
                otherwise 
                    warning('ERROR')
            end
        end
    end
end