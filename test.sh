counter=2
for dir in /home/txdai/research-2023/TargetDiff/test_set/*; do
    if [ -d "$dir" ]; then
        for file in "$dir"/*.pdb; do
            result_path="./sampling_results/$counter"
            mkdir -p "$result_path"
            python scripts/sample_for_pocket.py configs/sampling.yml --pdb_path "$file" --result_path "$result_path"
            counter=$((counter + 1))
        done
    fi
done
