#!/usr/bin/env bash
# OLC Liberation PBO build script
echo -e "- OLC Liberation PBO build script -\n"

if ! command -v makepbo &> /dev/null; then
    echo -e "\e[31mERROR:\e[0m 'makepbo' not found."
    echo -e "Get it from: \e[33mhttps://mikero.bytex.digital/Downloads\e[0m"
    exit 1
fi

mkdir -p build_pbos

for src_path in ../maps-OLC/kp_liberation*; do
    [[ -d "$src_path" ]] || continue
    dir=$(basename "$src_path")
    
    echo "📦 Building PBO for map: $dir"
    cp -r "$src_path" "./$dir"
    cp -r ../Missionframework/* "./$dir/"
    
    if [[ -d custom ]]; then
        cp -r ./custom/* "./$dir/"
    fi

    makepbo -X=none "$dir" "build_pbos/${dir}.pbo" >/dev/null
    rm -rf "./$dir"
    echo "✅ Done: ${dir}.pbo"
done

echo -e "\n🎉 All missions built. Check the 'build_pbos/' folder."
