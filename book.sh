echo "Сегодня очень хорошая погода" '10.10.2024 11:50:49'

echo -e "\n home\nikita"
read path_to

echo -e "\n document,music"
ls $path_to

get_size() {
    local path="$1"
    local size=$(du -hs "$path" 2>/dev/null | cut -f1)
    echo $size
}

items=$(ls -A)

for item in $items; do
    size=$(get_size "$item")
    echo -e "$size\t$item"
done | sort -rh -k1,1