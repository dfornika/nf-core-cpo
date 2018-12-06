FROM nfcore/base
LABEL authors="Dan Fornika" \
      description="Docker image containing all requirements for nf-core/cpo pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-cpo-1.0dev/bin:$PATH
