FROM python:2

WORKDIR /app

RUN apt update && apt install -y git \
    && git clone https://github.com/zhenchengfang/PPR-Meta.git \
    && chmod +x /app/PPR-Meta/PPR_Meta

RUN wget -q https://ssd.mathworks.com/supportfiles/downloads/R2018a/deployment_files/R2018a/installers/glnxa64/MCR_R2018a_glnxa64_installer.zip \
    && unzip MCR_R2018a_glnxa64_installer.zip \
    && ./install -mode silent -agreeToLicense yes \

ENV foo=bar
ENV LD_LIBRARY_PATH=/usr/local/MATLAB/MATLAB_Runtime/v94/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v94/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v94/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v94/extern/bin/glnxa64

COPY requirements.txt ./ 
RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install --upgrade pip
CMD [ "/app/PPR-Meta/PPR_Meta" ]
