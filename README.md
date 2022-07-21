[![deutsche Version](https://logos.oxidmodule.com/de2_xs.svg)](README.md)
[![english version](https://logos.oxidmodule.com/en2_xs.svg)](README.en.md)

# Inselzuordnungen / Inselzuschläge

Verändert die Ländereinträge des OXID eShops, um Versandkostenberechnungen zu Inselgebieten zu ermöglichen.

## Inhaltsverzeichnis

- [Installation](#installation)
- [Datenanpassung](#datenanpassung)
- [bisherige Kundendaten umschreiben](#bisherige-kundendaten-umschreiben)
- [Einstellungen anpassen](#einstellungen-anpassen)
- [Hinweise](#hinweise)
- [Erweiterbarkeit](#erweiterbarkeit)
- [Changelog](#changelog)
- [Beitragen](#beitragen)
- [Lizenz](#lizenz)

## Installation

Dieses Paket erfordert einen installierten OXID eShop.

Führen Sie die Datei `1_install.sql` in Ihrer Shopdatenbank aus.

## Datenanpassung

In der Datenbanktabelle `d3isles` finden Sie nun die gängigsten Postleitzahlen, für die normalerweise eine besondere Behandlung der Lieferung vorgesehen ist (z.B. Preiserhöhungen durch Inselzuschlag). Tragen Sie in dieser Tabelle noch nicht enthaltene Postleitzahlen nach oder löschen Sie überzählige Einträge. (Eine Bearbeitungsmöglichkeit im Adminbereich ist dafür derzeit nicht vorgesehen.)

## bisherige Kundendaten umschreiben

Um bestehende Kundenkonten zu den neu verfügbaren Inselgebieten zuzuordnen, führen Sie bitte zusätzlich die Datei `2_zuordnung.sql` in Ihrer Shopdatenbank aus.

## Einstellungen anpassen

Passen Sie abschließend Ihre Versandeinstellungen getrennt nach Festland und Inseln und dem jeweiligen Land an und konfigurieren Sie bei Bedarf das „neue“ Land.

## Hinweise

Beachten Sie, dass nun Festlandbewohner und Inselbewohner im Shop als Bewohner zweier unterschiedlicher Länder gesehen werden. Möglicherweise passen nun Auswertungen oder Modulerweiterungen nicht mehr, die ein eindeutiges Land erfordern. Für den Normalbetrieb hat diese Änderung jedoch keine Auswirkung.

Dieses Paket enthält keine logikverändernden Skripte. Wird eine Inseladresse vom Shopkunden fälschlicherweise zum Festland zugeordnet, wird dies nicht automatisch korrigiert. Möglicherweise werden dann unpassende Versandkosten berechnet. Führen Sie die Datei `2_zuordnung.sql` regelmäßig automatisiert aus, um die Zuordnungen der Bestandskonten aktuell zu halten. Adhoc-Korrekturen können auf Basis der hier enthaltenen Daten entwickelt werden.

## Erweiterbarkeit

Die Datenbankänderungen sind so flexibel angelegt, dass die Einträge außer für Deutschland auch für jedes andere Land mit entsprechenden Besonderheiten genutzt werden können. Einzige Bedingung ist, dass die Selektion über die Postleitzahl (oder
ein Derivat derer) erfolgen kann. Ändern Sie dann für Ihre Einträge in der Tabelle `d3isles` die Inhalte in `oxcountryid` (Ursprungsland) und `oxislescountry` (neues Land der Zuweisung). Legen Sie das zusätzliche Land entsprechend der Vorgabe für Deutschland in der Ländertabelle an. Führen Sie dann die Datei `2_zuweisung.sql` erneut aus.

## Changelog

Siehe [CHANGELOG](CHANGELOG.md) für weitere Informationen.

## Beitragen

Wenn Sie eine Verbesserungsvorschlag haben, legen Sie einen Fork des Respoitories an und erstellen Sie einen Pull Request. Alternativ können Sie einfach ein Issue erstellen. Fügen Sie das Projekt zu Ihren Favoriten hinzu. Vielen Dank.

- Erstellen Sie einen Fork des Projekts
- Erstellen Sie einen Feature Branch (git checkout -b feature/AmazingFeature)
- Fügen Sie Ihre Änderungen hinzu (git commit -m 'Add some AmazingFeature')
- Übertragen Sie den Branch (git push origin feature/AmazingFeature)
- Öffnen Sie einen Pull Request

## Lizenz
(Stand: 21.08.2013)

Vertrieben unter der GPLv3 Lizenz.

```
Copyright (c) D3 Data Development (Inh. Thomas Dartsch)

Diese Software wird unter der GNU GENERAL PUBLIC LICENSE Version 3 vertrieben.
```

Die vollständigen Copyright- und Lizenzinformationen entnehmen Sie bitte der [LICENSE](LICENSE.md)-Datei, die mit diesem Quellcode verteilt wurde.
