# Init scripty pro školní počítače

## Proč mít vlastní init scripty?

Jelikož se uživatelské účty na školních počítačích u nás na škole
smažou pokaždé, když se uživatel odhlásí, nezůstanou uložená žádná nastavení.
Díky scriptu, který spustíte pokaždé, když se přihlásíte, si můžete nastavit
své prostředí tak, jak ho chcete mít.

### Výhody mých scriptů

Hlavní script se postará o přenastavení takových otravných maličkostí:

* Odepne výchozí aplikace z lišty
* Sníží citlivost myši a vypne *mouse acceleration*

Dále spustí prohlížeč Chrome tak, že data prohlížeče se budou ukládat na váš disk `H:`
do složky `Chrome Data`. Vaše záložky a historii budete mít tak pokaždé k dispozici.

Při semináři z programování výrazně ušetří čas `dev` script:

* Přidá **git** do proměnné PATH, takže ho můžete používat odkudkoli z příkazového řádku
* Naklonuje repozitář s kódem (doporučuji ukládat kód ve vzdáleném repozitáři, např. *GitHub*)
* Otevře složku s kódem a příkazový řádek v oné složce

## Setup

1. Naklonujte repozitář do kořenového adresáře síťového disku `H:`
1. Upravte si scripty podle svých potřeb

## Spuštění

Při každém přihlášení můžete rychle spustit inicializační scripty tímto způsobem:

1. Stiskněte Windows tlačítko pro otevření nabídky start
1. Napište `cmd`
1. Vyčkejte, až nabídka start vyhledá *Příkazový řádek*, a stiskněte Enter
1. Otevře se příkazový řádek v adresáři `H:\`
1. Napište `init` a stiskněte Enter

Tím se spustí hlavní inicializační script [main.ps1](scripts/main.ps1).

Pokud si přejete zároveň s ním spustit i další script (např. `dev`),
napište `init <název scriptu>` (tedy např. `init dev`).
