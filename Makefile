build: build-argocd build-elastic build-istio

build-argocd: argocd/zarf-package-argocd-amd64.tar.zst
argocd/zarf-package-argocd-amd64.tar.zst: argocd/zarf.yaml
	cd argocd && zarf p c --confirm

deploy-elastic: build-elastic
	zarf p d --confirm elastic/zarf-package-elastic-amd64.tar.zst
build-elastic: elastic/zarf-package-elastic-amd64.tar.zst
elastic/zarf-package-elastic-amd64.tar.zst: elastic/zarf.yaml
	cd elastic && zarf p c --confirm

build-istio: istio/zarf-package-istio-amd64.tar.zst
istio/zarf-package-istio-amd64.tar.zst: istio/zarf.yaml
	cd istio && zarf p c --confirm
