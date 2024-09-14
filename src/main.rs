use std::process::Command;
use std::path::Path;
use colored::*;

fn main() -> std::io::Result<()> {
   let scripts_dir = "./src/scripts";
   let scripts = vec![
       "install_homebrew.sh", 
       "install_brew_packages.sh",
       "install_oh_my_zsh.sh",
       "copy_config_files.sh",
       "terminal_config.sh"
   ];
   
   for script in scripts {
       execute_script(scripts_dir, script)?;
   }

   Ok(())
}

fn execute_script(scripts_dir: &str, script_name: &str) -> std::io::Result<()>  {
    let script_path = Path::new(scripts_dir).join(script_name);
    
    if script_path.exists() {
        println!("{}", format!("Executing {}...", script_name).blue());
    
        // Make sure the script is executable
        Command::new("chmod")
            .arg("+x")
            .arg(&script_path)
            .status()?;

        // Execute the script
        let output = Command::new("sh")
            .arg("-c")
            .arg(&script_path)
            .output()?;

        if output.status.success() {
            println!("{}", format!("{} executed successfully.", script_name).green());
            println!("{}", String::from_utf8_lossy(&output.stdout));
        } else {
            eprintln!("{}", format!("Error executing {}:", script_name).red());
            eprintln!("{}", String::from_utf8_lossy(&output.stderr));
        }
    } else {
        println!("{}", format!("Script {} not found.", script_name).yellow());
    }

    Ok(())
}

