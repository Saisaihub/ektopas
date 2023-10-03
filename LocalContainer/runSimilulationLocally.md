# Run a test simulation on your local machine

Download and copy [inputexample.txt](inputexample.txt) into the folder ‘TopasHostIO’

---

For the Full image ektsysphys/ektopas:

```bash
docker run --rm --volume="C:/TopasHostIO:/home/IOTempDir" --env="TOPAS_G4_DATA_DIR=/home/G4Data" --entrypoint="/home/topas/bin/topas" ektsysphys/ektopas:latest /home/IOTempDir/inputexample.txt
```

---

For the lite image ektsysphys/ektopaslite:

```bash
docker run --rm --volume="C:/TopasHostIO:/home/IOTempDir" --volume="C:/G4Data:/home/G4Data" --env="TOPAS_G4_DATA_DIR=/home/G4Data" --entrypoint="/home/topas/bin/topas" ektsysphys/ektopaslite:latest /home/IOTempDir/inputexample.txt
```

