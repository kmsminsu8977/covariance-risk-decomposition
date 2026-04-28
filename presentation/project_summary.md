# 발표 초안

## 1. 문제 정의

포트폴리오 변동성은 어떤 자산의 개별 변동성과 상관구조에서 주로 발생하는가?

## 2. 데이터와 가정

- 합성 샘플 데이터: `data/sample/asset_return_panel.csv`
- 재현 가능한 baseline 실행을 우선 구성

## 3. 방법

자산별 수익률 공분산과 포트폴리오 가중치로 리스크 기여도를 분해한다.

## 4. 현재 산출물

- 실행 스크립트: `python -m src.run_baseline`
- 결과 표: `outputs/tables/baseline_results.csv`

## 5. 후속 작업

- 실제 데이터 연결
- 민감도 분석
- 차트/보고서 산출
- 프로젝트별 상세 검증
