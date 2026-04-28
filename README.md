# Covariance Risk Decomposition

공분산 리스크 분해 프로젝트의 기본 연구 구조와 재현 가능한 baseline 산출물을 담은 저장소입니다.

**핵심 연구 질문**

> 포트폴리오 변동성은 어떤 자산의 개별 변동성과 상관구조에서 주로 발생하는가?

## 범위와 원칙

- KAIST-DFMBA 과정에서 제공받은 원본 소스, 강의자료, 표, 데이터는 그대로 포함하지 않습니다.
- 샘플 데이터는 개념 설명을 위해 새로 만든 합성 값입니다.
- 설명은 원문 복제가 아니라 프로젝트 흐름에 맞춘 직관적 요약으로 작성했습니다.

## 저장소 구조

```text
covariance-risk-decomposition/
├── src/                         # baseline 계산 로직과 실행 엔트리포인트
├── data/sample/                 # 합성 샘플 입력 데이터
├── docs/                        # 방법론과 해석 기준
├── notebooks/                   # 실행 흐름을 보여주는 최소 노트북
├── outputs/tables/              # 재현 가능한 결과 CSV
├── presentation/                # 발표/보고서 초안
└── references/                  # 재작성 개념 노트와 참고문헌 메모
```

## 빠른 시작

```bash
python -m src.run_baseline
```

실행 결과는 `outputs/tables/baseline_results.csv`에 저장됩니다.

## 구현 범위

- 표본 공분산 행렬과 가중치 벡터로 포트폴리오 분산을 산출한다.
- 각 자산의 marginal contribution과 component contribution을 구분한다.
- 자산명과 수익률은 강의자료가 아닌 설명용 합성 패널이다.

## 주요 파일

- `src/covariance_risk_baseline.py`: 자산별 수익률 공분산과 포트폴리오 가중치로 리스크 기여도를 분해한다.
- `data/sample/asset_return_panel.csv`: baseline 실행용 합성 입력값
- `docs/methodology.md`: 계산 절차, 입력/출력 정의, 해석상 주의점
- `outputs/tables/baseline_results.csv`: 현재 baseline 산출물

## 다음 확장 방향

- 실제 공개 데이터 또는 별도 수집 데이터 연결
- notebook 기반 탐색 분석 추가
- 차트와 표를 포함한 최종 보고서 작성
- 모델 검증, 민감도 분석, 비용/리스크 가정 보강
