%%Nastavi promennou ve workspace z namerenych hodnot
load('namerene_hodnoty');
load('namerene');
load('odezva_skok_02');

phim_struct.time = odezva_skok_02(:,1);
phim_struct.signals.values = [odezva_skok_02(:,2), odezva_skok_02(:,3)];
phim_struct.signals.dimensions = 2;

nam_hod.time = scopearray.time;
nam_hod.signals.values = [scopearray.signals(1).values(:,1), scopearray.signals(2).values(:,1)];
nam_hod.signals.dimensions = 2;

nam_hod2.time = ScopeData(:,1);
nam_hod2.signals.values(:,1) = ScopeData(:,2);
nam_hod2.signals.values(:,2) = ScopeData(:,3);
nam_hod2.signals.dimensions = 2;