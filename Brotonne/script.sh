rm -f brotonne30.xyz

octave octaveBrotonne.m

mv brotonne30.xyz brotonne30.xyz$$
sed "/^#/d" brotonne30.xyz$$ > brotonne30.xyz && rm -f brotonne30.xyz$$
mv brotonne30.xyz brotonne30.xyz$$
cut -c2- brotonne30.xyz$$ > brotonne30.xyz && rm -f brotonne30.xyz$$
