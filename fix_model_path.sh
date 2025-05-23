#!/bin/bash

MERGE_PY="/etc/orthanc/fracturedetect/merge.py"
fOLD_LINE='fracture_model = modelYolo.load_sahi_model("models/fracture.pt")'
fNEW_LINE='fracture_model = modelYolo.load_sahi_model("/etc/orthanc/fracturedetect/models/fracture.pt")'
lOLD_LINE='lcancer_model = modelYolo.load_sahi_model("models/lcancer.pt")'
lNEW_LINE='lcancer_model = modelYolo.load_sahi_model("/etc/orthanc/fracturedetect/models/lcancer.pt")'
if [ -f "$MERGE_PY" ]; then
    sed -i "s|$fOLD_LINE|$fNEW_LINE|" "$MERGE_PY"
    echo "Fracture Path updated in $MERGE_PY"
    sed -i "s|$lOLD_LINE|$lNEW_LINE|" "$MERGE_PY"
    echo "Lcancer Path updated in $MERGE_PY"
else
    echo "File $MERGE_PY not found."
    exit 1
fi