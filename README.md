
# OpenDAoC Databases Dump

This repository contains the latest cleaned up databases dump for use with [OpenDAoC-Core](https://github.com/OpenDAoC/OpenDAoC-Core) and [OpenDAoC-PvP](https://github.com/OpenDAoC/OpenDAoC-PvP). 

## Description

The databases dump provided in this repository serves as a foundation for running the OpenDAoC-Core and OpenDAoC-PvP projects. 
It includes essential game data required to set up and operate these projects effectively.

## Update: Changes to Database Format
Previously, the databases dump was provided as a zip file. However, to increase the maintainability of the database and leverage GitHub's diff/branching capabilities, the database is now provided in multiple .sql files, divided per single table.

These files are organized into two folders: `opendaoc-db-core` and `opendaoc-db-pvp`.

### Combining the files
Although this is not required, users can combine the files back into a single file for easier import into a database management system.

To combine the files back together, users should download the [SQLSplit](https://github.com/claitz/SQLSplit) utility from the [SQLSplit GitHub Releases page](https://github.com/claitz/SQLSplit/releases) and reference the tool's README for its usage.

Alternatively, users can work with the single table files as needed.

## Usage

To use this databases dump with OpenDAoC-Core and OpenDAoC-PvP, follow these steps:

1.  Clone or download the repository to your local machine.
    
2.  Make sure you have a compatible database management system (e.g., MySQL) installed and running.
    
3.  Create a new database instance for OpenDAoC. You can choose any suitable name for your database.
    
4.  Import the individual `.sql` files located in the `opendaoc-db-core` or `opendaoc-db-pvp` folders into your newly created database using your preferred method, such as command-line tools or a GUI client.
    
5.  Once the import is complete, configure `OpenDAoC-Core` or `OpenDAoC-PvP` to connect to your database. Refer to the respective project documentation for detailed instructions on configuring and running each project.
    
6.  Start the server. It should now be able to interact with the imported database.
    

## Contributing

If you encounter any issues or have suggestions for improvements, please open an issue in this repository. Contributions and pull requests are welcome.

## License

This databases dump is provided under the [GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0/). 
Feel free to use, modify, and distribute it as permitted by the license.

## Acknowledgements

We would like to thank the Dark Age of Camelot community for their support and contributions to the OpenDAoC project.

Please note that this repository only contains the cleaned up databases dump and does not include the entire OpenDAoC project. 
For the complete OpenDAoC-Core and OpenDAoC-PvP projects, refer to their respective repositories.

For more information and detailed documentation, visit the [OpenDAoC website](https://opendaoc.com/) or our [Discord](https://discord.gg/RHqzyt8KyC). 
