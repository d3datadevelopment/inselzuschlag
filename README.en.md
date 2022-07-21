[![deutsche Version](https://logos.oxidmodule.com/de2_xs.svg)](README.md)
[![english version](https://logos.oxidmodule.com/en2_xs.svg)](README.en.md)

# Island assignments / island surcharges

Modifies the country entries of the OXID eShop to enable shipping costs calculations to island territories.

## Inhaltsverzeichnis

- [Installation](#installation)
- [Data customisation](#data-customisation)
- [Rewrite previous customer data](#rewrite-previous-customer-data)
- [Adjust settings](#adjust-settings)
- [Notes](#notes)
- [Extensibility](#extensibility)
- [Changelog](#changelog)
- [Contributing](#contributing)
- [Licence](#licence)

## Installation

This package requires an installed OXID eShop.

Execute the file `1_install.sql` in your shop database.

## Data customisation

In the database table `d3isles` you will now find the most common postcodes for which special treatment of the delivery is normally provided (e.g. price increases due to island surcharge). Add postcodes not yet included in this table or delete extra entries. (An editing option in the admin area is currently not provided for this).

## Rewrite previous customer data

In order to assign existing customer accounts to the newly available island areas, please additionally execute the file `2_zuordnung.sql` in your shop database.

## Adjust settings

Finally, adjust your shipping settings separately for mainland and islands and the respective country and configure the "new" country if required.

## Notes

Note that mainlanders and islanders are now seen as residents of two different countries in the shop. It is possible that statistics or plugins that require a unique country will no longer fit. However, this change has no effect on normal operation.

This package does not contain any logic-changing scripts. If an island address is incorrectly assigned to the mainland by the shop customer, this is not automatically fixed. It is possible that inappropriate shipping costs will then be charged. Run the '2_assignment.sql' file automatically on a regular basis to keep stock account assignments up to date. Ad hoc corrections can be developed based on the data contained here.

## Extensibility

The database changes are designed so flexibly that the entries can also be used for any other country with corresponding special features apart from Germany. The only condition is that the selection can be made via the postcode (or a derivative thereof).
Then, for your entries in the table `d3isles`, change the contents to `oxcountryid` (country of origin) and `oxislescountry` (new country of assignment). Create the additional country according to the default for Germany in the country table. Then run the file `2_zuweisung.sql` again.

## Changelog

See [CHANGELOG](CHANGELOG.md) for further informations.

## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue. Don't forget to give the project a star! Thanks again!

- Fork the Project
- Create your Feature Branch (git checkout -b feature/AmazingFeature)
- Commit your Changes (git commit -m 'Add some AmazingFeature')
- Push to the Branch (git push origin feature/AmazingFeature)
- Open a Pull Request

## Licence
(status: 2013-08-21)

Distributed under the GPLv3 license.

```
Copyright (c) D3 Data Development (Inh. Thomas Dartsch)

This software is distributed under the GNU GENERAL PUBLIC LICENSE version 3.
```

For full copyright and licensing information, please see the [LICENSE](LICENSE.md) file distributed with this source code.
