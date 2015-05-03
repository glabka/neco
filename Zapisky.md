#Lab. úloha

##Saturace a pásma necitlivosti
###Na vstupu u_mot
* pásmo necitlivosti: vtup: 0.007 (výstup: 0)
* saturace: vtup: +-1, výstup: +-3.6*10^4 (tiků za sekundu)


## 1. rce ( ne-stavová)

###Naměřené
* k = 37000
* T = 0.16

###Výpočet
* G = k/(s^2 T + s)

## 2. rce (ne-stavová)

###Naměřené
* A1 = 60
* A2 = 58
* Td = 0.7 %odladěné = 0.725

###Výpočet

* k nejde určit, protože to není odezva na skok.
* **identifikace mi, zeta, omegan:** pomocí postupu ze str. 6 na http://www.polyx.com/_ari/slajdy/Bas-ARI-05-Identification.pdf
* mi = 0.0339
* zeta = 0.0054
* omega_n = 8.9761
* **identifikace Jp, delta: **ovození vzorečků: Jp = m*g*l/(omegan^2); delta = Jp*zeta*omegan; je takové, že jsem vyšel z druhé rovnice (ne-stavové), ve které jsem zanedbal člen s pti_m. Z toho jsem vyjádřil něco jako přenos na počáteční podmínky, tj. "H" = 1 / (Jp * s^2 + 2 delta omgan + m1 * g * l), což jsem položil do rovnosti s přenosem systému druhého řádu ve tvaru, který se používá pro identifikaci (a v něm jsem identifikoval již dříve omega_n atd. ...)

##Ostatní
###Naměření
* r = 20 cm = 0.2 m
* l = 17 cm = 0.17 m
* m1 = 0.175 kg
* m1*l*r = 0.00595

###Transformace phi na tiky enkodéru
* phi_m [rad] = 2 * pi/7300 * ekoder_ramena
* pihi_p = (-2 * pi/2000) * enkoder_kyvadla - pi/2  (Asi.) <!---->

###Poznámky
* při transformaci výstupu linearizovaného modelu není potřeba nic přičítat - pracovní bod se nám odečte s tím posunutím pi/2 v transforamci na enkodérové tiky.
* v sešitu mám (datované ke 31. 3.) zápisky se jménem **Nejasnoti a chyby**, kde mám zapsány nejasnosti a chyby v zadání či v tom přístroji (kyvadle).

###Poznámky k poznámkám, které nám dal cvičící k zpracování:
* 5. úloha má špatný přenos, správně by měl mít nulu (v případě, že bereme počáteční podmínku rychlosti za nulovou), pak by to mělo vyjít:
	* phip = (2 delta + Jp*s) / (Jp*s^2+2*delta*s+m*g*l)
#Regulace
##regulatory
* lead-lag, co Matous navrhl rltoolem, a zapomnel ho vydelit 16, aby to bylo v u_norm a ne M, a v tomto stavu byl dobry
* pouze zesileni 16 ve zpetne vazbe je dobry degulator - na modelu. Ale nejaky P by mel bezet i v realu, protoze v tom je integrator.


#Výsledek seance z 3.5.
* Když chceme kyvadlu nastavit počáteční podmínku do 0 ve phi-souřadnicích (tj. horizontálně), tak u lin. modelu nastavíme na kostce state space [0 pi/2 0 0] (tj. výchylku relativně k pracovnímu bodu) a pro nelineární model změníme ve workspacu proměnno x2p na 0.
* Do nuly se to ustaluje díky deriv. členu. Dále to nesleduje skok, a proto jediná myslitelná reference -pi/2 v phi-souřadnicích, jen v tomto případě se akční zásach ustáli do 0 (podmínka ze zadání).
* Musíme transormovat referenci podle toho, na kterou stranu je vychýhlená, na jedu stranu se regulátor snaží dostat kyvadlo do nuly přetočením přes horní polohu (neví, 2pi == 0 nebo tak něco). Možná by to šlo vyřešit tak, že bychom tu "špatnou referenci" přenásobili -1, regulátor bychom to nechali spočítat a jeho výstup bychom opět vynásobili -1.
* Doufáme, že ten regulátor kyvadla, co je rac. fce, kde čit. i jmenovatel jsou řádu 2 je lead-lag, tj. ty póly jsou vždy jeden menší, druhý větší, nebo jak to v leadu, res. lagu, je - kdyžtak se zeptej cvičícího.
