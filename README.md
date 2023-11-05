1. cd citl-gpt-banker-deployment

This command navigates to the directory called citl-gpt-banker-deployment. Make sure you have this directory available and accessible before proceeding.

2. Create a Virtual Environment:

python -m venv venv

This command creates a Python virtual environment named "venv" in the current directory. Virtual environments are used to isolate dependencies for a specific project.

3. Activate the Virtual Environment:

source venv/bin/activate

This command activates the virtual environment you just created. When the virtual environment is active, any Python packages you install using pip will be isolated to this environment, ensuring that they don't interfere with the global Python environment.

4. Install Project Dependencies:

pip install -r requirements.txt

This command installs the project's dependencies, which are listed in the requirements.txt file. It's a common practice to include all the required Python packages and their versions in this file. The pip command reads this file and installs the specified packages.

5. Run the Python Application:

python main.py

This command runs the Python application named main.py. This is typically the entry point for your project. Be sure that main.py exists in the current directory and contains the necessary code to execute your application.

