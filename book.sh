convert wc4jd.png -matte -virtual-pixel transparent \
         -distort Perspective \
              '0,0 0,0   0,651 0,651   453,0 320,43   453,651 320,608' \
          front_pers.png
convert UPj8N.png -matte -virtual-pixel transparent \
         -distort Perspective \
              '0,0 0,4   0,652 0,648   36,0 36,0   36,652 36,652' \
          spine_pers.png
convert -brightness-contrast -15x10 spine_pers.png spine_pers_dark.png
convert spine_pers_dark.png front_pers.png +append output1.png
convert output1.png -alpha set -virtual-pixel transparent -channel A \
          -morphology Distance Euclidean:1,5\! +channel output.png
