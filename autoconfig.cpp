#include <iomanip>
#include <iostream>
using namespace std;

int main(void)
{
    int browser, text;
    cout << "BROWSER:\n1. Firefox\n2. Libre Wolf\n3. Surf\n";
    cin >> browser;
    cout << "TEXT EDITOR:\n1. Vim\n2. NeoVim\n3. VSCodium\n4. VSCode";
    cin >> text;
    system("git clone https://aur.archlinux.org/yay.git; cd ~/yay/; makepkg -si");
    if(browser==1)
    {
        if(text==1)
            system("yay -S rofi polybar firefox i3-git neofetch thunar lxappearance vim alacritty");
        else if(text==2)
            system("yay -S rofi polybar firefox i3-git neofetch thunar lxappearance neovim alacritty");
        else if(text==3)
            system("yay -S rofi polybar firefox i3-git neofetch thunar lxappearance vscodium-bin alacritty");
        else if(text==4)
            system("yay -S rofi polybar firefox i3-git neofetch thunar lxappearance code alacritty");
    }
    else if(browser==2)
    {
        if(text==1)
            system("yay -S rofi polybar librewolf-bin i3-git neofetch thunar lxappearance vim alacritty");
        else if(text==2)
            system("yay -S rofi polybar librewolf-bin i3-git neofetch thunar lxappearance neovim alacritty");
        else if(text==3)
            system("yay -S rofi polybar librewolf-bin i3-git neofetch thunar lxappearance vscodium-bin alacritty");
        else if(text==4)
            system("yay -S rofi polybar librewolf-bin i3-git neofetch thunar lxappearance code alacritty");
    }
    else if(browser==3)
    {
        if(text==1)
            system("yay -S rofi polybar surf i3-git neofetch thunar lxappearance vim alacritty");
        else if(text==2)
            system("yay -S rofi polybar surf i3-git neofetch thunar lxappearance neovim alacritty");
        else if(text==3)
            system("yay -S rofi polybar surf i3-git neofetch thunar lxappearance vscodium-bin alacritty");
        else if(text==4)
            system("yay -S rofi polybar surf i3-git neofetch thunar lxappearance code alacritty");
    }
    printf("FINISHED INSTALLING PACKAGES");
    system("neofetch");
}