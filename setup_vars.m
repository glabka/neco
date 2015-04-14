%%Nastavi promennou ve workspace z namerenych hodnot
load('namerene_hodnoty');
load('odezva_skok_02');

phim_struct.time = odezva_skok_02(:,1);
phim_struct.signals.values = [odezva_skok_02(:,2), odezva_skok_02(:,3)];
phim_struct.signals.dimensions = 2;