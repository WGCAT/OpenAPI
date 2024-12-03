package main

// Path

// [GET] /exchange/:code
// In this case, code is USD.

// Response

// {
//    "rate": 1400.00
// }

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

// 상수 정의
const (
	baseURL = "https://data.fixer.io/api/latest"
	apiKey  = "12763dfec255d00554e5dcc3ca6512a8"
)

// Response 구조체
type FixerResponse struct {
	Rates map[string]float64 `json:"rates"`
}

// 환율 가져오기
func getExchangeRate(currencyCode string) float64 {
	// 0. URL 생성
	// 1. Fixer API에 요청
	// 2. JSON응답을 디코딩하여 구조체에 담기
	// 3. 반환

	// Fixer API호출 URL 생성
	url := fmt.Sprintf("%s?access_key=%s", baseURL, apiKey)

	// Fixer API에 HTTP GET 요청 후 resp에 담기
	resp, _ := http.Get(url)
	// GET 후 닫기
	defer resp.Body.Close()

	// JSON 응답을 디코딩하여 구조체에 담기
	var fixerResponse FixerResponse
	json.NewDecoder(resp.Body).Decode(&fixerResponse)

	return fixerResponse.Rates[currencyCode]
}

func main() {
	// Gin 라우터 생성
	r := gin.Default()

	// http://localhost:8080/exchange/USD
	r.GET("/exchange/:code", func(c *gin.Context) {
		// URL에 적은 통화 코드 추출
		currencyCode := c.Param("code")
		// 환율 가져오기
		rate := getExchangeRate(currencyCode)
		// JSON형식으로 응답 반환
		c.JSON(http.StatusOK, gin.H{
			"rate": rate,
		})
	})

	// 서버 실행
	r.Run(":5000")
}
