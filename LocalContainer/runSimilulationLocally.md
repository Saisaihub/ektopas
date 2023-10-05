# Run a test simulation on your local machine

Download and copy [inputexample.txt](inputexample.txt) into the folder ‘TopasHostIO’

---

For the Full image ektsysphys/ektopas:

```bash
docker run --rm --volume="$(pwd)/TopasHostIO:/home/IOTempDir" ektopasfull.azurecr.io/ektopasfull:latest /home/IOTempDir/inputexample.txt
```

---

For the lite image ektsysphys/ektopaslite:

```bash
docker run --rm --volume="$(pwd)/TopasHostIO:/home/IOTempDir" --volume="$(pwd)/G4Data:/home/G4Data" ektopaslite.azurecr.io/ektopaslite:latest /home/IOTempDir/inputexample.txt
```
