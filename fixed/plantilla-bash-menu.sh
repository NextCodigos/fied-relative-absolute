#!/bin/bash

# Default values
default_width="200px"
default_height="200px"
default_bg_color="#aaa"
default_position="fixed"
default_left="50px"
default_top="200px"
default_rext_width="300px"
default_rext_height="300px"
default_rext_color="red"

# Ask the user if they want to use default values
read -p "Do you want to use default values? (y/n): " use_default

if [[ $use_default == "n" || $use_default == "N" ]]; then
    # If the user doesn't want to use defaults, ask for custom values
    read -p "Enter width for cuadrado: " width
    read -p "Enter height for cuadrado: " height
    read -p "Enter background color for cuadrado: " bg_color
    read -p "Enter position for cuadrado: " position
    read -p "Enter left for cuadrado: " left
    read -p "Enter top for cuadrado: " top
    read -p "Enter width for rextangulo: " rext_width
    read -p "Enter height for rextangulo: " rext_height
    read -p "Enter background color for rextangulo: " rext_color
else
    # Use default values
    width="$default_width"
    height="$default_height"
    bg_color="$default_bg_color"
    position="$default_position"
    left="$default_left"
    top="$default_top"
    rext_width="$default_rext_width"
    rext_height="$default_rext_height"
    rext_color="$default_rext_color"
fi

# HTML code
html_code="<!DOCTYPE html>
<html lang=\"en\">
    <head>
        <meta charset=\"UTF-8\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
        <title>Document</title>
        <!-- <link rel=\"stylesheet\" href=\"style.css\"> -->
        <style>
            .cuadrado {
                width: $width;
                height: $height;
                background-color: $bg_color;
                position: $position;
                left: $left;
                top: $top;
            }

            .rextangulo {
                width: $rext_width;
                height: $rext_height;
                background-color: $rext_color;
                /* position: fixed; */
            }
        </style>
    </head>
    <body>
        <div class=\"cuadrado\"></div>

        <div class=\"rextangulo\"></div>
        <div class=\"rextangulo\"></div>
        <div class=\"rextangulo\"></div>
        <div class=\"rextangulo\"></div>
        <div class=\"rextangulo\"></div>
    </body>
</html>"

# Create the HTML file
echo "$html_code" > mypage2.html

echo "HTML file created as 'mypage2.html'"
