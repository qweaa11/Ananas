<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ======= #26. tiles2 중 sideinfo 페이지 만들기  ======= --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div ui-view="facet">
	<h4 ng-show="facets.length" class="ikc-current-facets-title">검색결과 제한</h4>
	<div class="ikc-current-facets" ng-show="facets.length > 0">
		<div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets">
		<h5 class="ikc-facets-subject"><strong>분관</strong><span class="ikc-facet-count"></span></h5>
			<div ng-switch-default="" class="ikc-facets">
				<div ng-include="'facet-normal-result'">
				<ul>
       				<li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            	<a href="">산본도서관<span>도서수</span></a>
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                당동도서관<span class="ikc-facet-count">(58,183)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                대야도서관<span class="ikc-facet-count">(61,177)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                어린이도서관<span class="ikc-facet-count">(7,286)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                이동도서관<span class="ikc-facet-count">(484)</span>
            </a><!---->
            <!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]" ng-click="sortItems(facet.items, facet.code)" title="분관" class="ng-hide">
            <!---->
            <!---->
            <!----><span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span><!---->
            <!----><span ng-if="!facet.isNameSorted">이름순</span><!---->
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="분관">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="분관" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!----><a href="" ng-if="multiSelectTagets[facet.code] > 1" ng-show="showFacetSelectBoxButton[facet.code]" ng-click="showFacetSelectBox(facet.code)" title="분관">
            <span class="k-icon k-i-multicheck"></span><span>다중선택</span>
        </a><!---->
        <br ng-show="facet.size > limit[facet.code]"> <!-- 더보기/접기 시에만 줄바꿈 -->
        <!----><a href="" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-click="hideFacetSelectBox(facet.code)" title="분관" class="ng-hide">
            <span class="k-icon k-i-cancel"></span><span>다중선택닫기</span>
        </a><!---->

        <!----><a href="" class="ikc-btn-facet ng-hide" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-disabled="checked[facet.code]" ng-click="applyMultipleFacet(facet.code, checked[facet.code])" title="분관" disabled="disabled">선택적용
        </a><!---->
    </div></div></div><!----></div><!----><div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets"><h5 class="ikc-facets-subject"><strong>자료유형</strong><span class="ikc-facet-count">(1)</span></h5><!----><!----><div ng-switch-default="" class="ikc-facets"><!----><div ng-include="'facet-normal-result'"><ul>
        <!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!---->
            <!----><span ng-if="facet.size == 1">
                단행본<span class="ikc-facet-count">(521,745)</span>
            </span><!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]" ng-click="sortItems(facet.items, facet.code)" title="자료유형" class="ng-hide">
            <!---->
            <!---->
            <!----><span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span><!---->
            <!----><span ng-if="!facet.isNameSorted">이름순</span><!---->
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="자료유형" class="ng-hide">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="자료유형" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!---->
        <br ng-show="facet.size > limit[facet.code]" class="ng-hide"> <!-- 더보기/접기 시에만 줄바꿈 -->
        <!---->

        <!---->
    </div></div></div><!----></div><!----><div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets"><h5 class="ikc-facets-subject"><strong>저자</strong><span class="ikc-facet-count">(20)</span></h5><!----><!----><div ng-switch-default="" class="ikc-facets"><!----><div ng-include="'facet-normal-result'"><ul>
        <!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                김난주<span class="ikc-facet-count">(1,010)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                나관중<span class="ikc-facet-count">(747)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                김정환<span class="ikc-facet-count">(711)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                조정래<span class="ikc-facet-count">(691)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                양윤옥<span class="ikc-facet-count">(668)</span>
            </a><!---->
            <!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]" ng-click="sortItems(facet.items, facet.code)" title="저자" class="ng-hide">
            <!---->
            <!---->
            <!----><span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span><!---->
            <!----><span ng-if="!facet.isNameSorted">이름순</span><!---->
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="저자">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="저자" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!----><a href="" ng-if="multiSelectTagets[facet.code] > 1" ng-show="showFacetSelectBoxButton[facet.code]" ng-click="showFacetSelectBox(facet.code)" title="저자">
            <span class="k-icon k-i-multicheck"></span><span>다중선택</span>
        </a><!---->
        <br ng-show="facet.size > limit[facet.code]"> <!-- 더보기/접기 시에만 줄바꿈 -->
        <!----><a href="" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-click="hideFacetSelectBox(facet.code)" title="저자" class="ng-hide">
            <span class="k-icon k-i-cancel"></span><span>다중선택닫기</span>
        </a><!---->

        <!----><a href="" class="ikc-btn-facet ng-hide" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-disabled="checked[facet.code]" ng-click="applyMultipleFacet(facet.code, checked[facet.code])" title="저자" disabled="disabled">선택적용
        </a><!---->
    </div></div></div><!----></div><!----><div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets"><h5 class="ikc-facets-subject"><strong>주제</strong><span class="ikc-facet-count">(20)</span></h5><!----><!----><div ng-switch-default="" class="ikc-facets"><!----><div ng-include="'facet-normal-result'"><ul>
        <!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                장편소설<span class="ikc-facet-count">(17,853)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                한국문학<span class="ikc-facet-count">(14,681)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                한국소설<span class="ikc-facet-count">(10,527)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                사랑<span class="ikc-facet-count">(7,432)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                인생<span class="ikc-facet-count">(6,922)</span>
            </a><!---->
            <!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]" ng-click="sortItems(facet.items, facet.code)" title="주제" class="ng-hide">
            <!---->
            <!---->
            <!----><span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span><!---->
            <!----><span ng-if="!facet.isNameSorted">이름순</span><!---->
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="주제">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="주제" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!----><a href="" ng-if="multiSelectTagets[facet.code] > 1" ng-show="showFacetSelectBoxButton[facet.code]" ng-click="showFacetSelectBox(facet.code)" title="주제">
            <span class="k-icon k-i-multicheck"></span><span>다중선택</span>
        </a><!---->
        <br ng-show="facet.size > limit[facet.code]"> <!-- 더보기/접기 시에만 줄바꿈 -->
        <!----><a href="" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-click="hideFacetSelectBox(facet.code)" title="주제" class="ng-hide">
            <span class="k-icon k-i-cancel"></span><span>다중선택닫기</span>
        </a><!---->

        <!----><a href="" class="ikc-btn-facet ng-hide" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-disabled="checked[facet.code]" ng-click="applyMultipleFacet(facet.code, checked[facet.code])" title="주제" disabled="disabled">선택적용
        </a><!---->
    </div></div></div><!----></div><!----><div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets"><h5 class="ikc-facets-subject"><strong>발행처</strong><span class="ikc-facet-count">(20)</span></h5><!----><!----><div ng-switch-default="" class="ikc-facets"><!----><div ng-include="'facet-normal-result'"><ul>
        <!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                문학동네<span class="ikc-facet-count">(9,398)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                민음사<span class="ikc-facet-count">(6,489)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                창비<span class="ikc-facet-count">(5,021)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                김영사<span class="ikc-facet-count">(4,411)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                21세기북스<span class="ikc-facet-count">(4,013)</span>
            </a><!---->
            <!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]" ng-click="sortItems(facet.items, facet.code)" title="발행처" class="ng-hide">
            <!---->
            <!---->
            <!----><span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span><!---->
            <!----><span ng-if="!facet.isNameSorted">이름순</span><!---->
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="발행처">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="발행처" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!----><a href="" ng-if="multiSelectTagets[facet.code] > 1" ng-show="showFacetSelectBoxButton[facet.code]" ng-click="showFacetSelectBox(facet.code)" title="발행처">
            <span class="k-icon k-i-multicheck"></span><span>다중선택</span>
        </a><!---->
        <br ng-show="facet.size > limit[facet.code]"> <!-- 더보기/접기 시에만 줄바꿈 -->
        <!----><a href="" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-click="hideFacetSelectBox(facet.code)" title="발행처" class="ng-hide">
            <span class="k-icon k-i-cancel"></span><span>다중선택닫기</span>
        </a><!---->

        <!----><a href="" class="ikc-btn-facet ng-hide" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-disabled="checked[facet.code]" ng-click="applyMultipleFacet(facet.code, checked[facet.code])" title="발행처" disabled="disabled">선택적용
        </a><!---->
    </div></div></div><!----></div><!----><div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets"><h5 class="ikc-facets-subject"><strong>발행년도</strong><span class="ikc-facet-count">(64)</span></h5><!----><div ng-switch-when="PUBLISH_YEAR" class="ikc-facets"><!----><div ng-include="'facet-date-result'"><ik-facet-publish-year data="facet.items" from="fromPublishYearChanged" to="toPublishYearChanged"><style>
  .brush .extent {
      stroke: #fff;
      fill-opacity: 0.2;
      shape-rendering: crispEdges;
  }
</style>
<div id="ik-facet-year-chart"><svg width="180" height="60"><g transform="translate(0,0)"><path class="ikc-facet-publish-year-area" d="M180,59.9837387356867L179.82242811311627,27.24574835693475L179.64485622623252,12.164780811708109L179.46679784102855,8.733654041601735L179.28922595414483,15.736838539196425L179.1116540672611,15.083677755945523L178.93408218037735,7.537096009214714L178.7560237951734,3.7143437902296883L178.57845190828968,0L178.40088002140592,5.118232942611289L178.2233081345222,25.42042143776679L178.04524974931823,27.77152923639813L177.8676778624345,36.17047225421776L177.69010597555075,37.465952977844026L177.51253408866702,33.49142895860153L177.33447570346306,34.370892336879194L177.15690381657933,36.20977030964158L176.97933192969558,38.28985703638458L176.80176004281185,48.558845450233754L176.62370165760788,53.8152991395081L176.44612977072416,56.13388440951284L176.2685578838404,54.930550850328615L176.09098599695668,56.601395758520226L175.91292761175274,57.33992817941595L175.73535572486898,57.430720238498544L175.55778383798526,57.23694017209838L175.38021195110153,58.41046141337489L175.20215356589753,59.047360932312486L175.0245816790138,59.64360729046683L174.84700979213008,59.59075818144861L174.66943790524635,59.83738735686699L174.4913795200424,59.84009756758588L174.31380763315863,59.848228199742536L174.1362357462749,59.92817941594959L173.95866385939115,59.92953452130903L173.7806054741872,59.93224473202792L173.60303358730349,59.922758994511824L173.42546170041976,59.96205704993563L173.247889813536,59.98238363032726L173.06983142833204,59.98644894640559L172.8922595414483,59.97831831424894L172.71468765456459,59.985093841046144L172.53711576768083,59.990514262483906L172.35905738247686,59.995934683921675L172.18148549559314,59.998644894640556L172.00391360870938,59.995934683921675L171.82634172182566,59.98644894640559L171.64828333662172,59.9837387356867L171.47071144973796,59.993224473202794L171.29313956285424,59.99728978928112L171.1155676759705,59.987804051765025L170.93750929076654,59.995934683921675L170.7599374038828,59.998644894640556L170.58236551699906,59.998644894640556L170.22673524491137,59.998644894640556L170.0491633580276,59.998644894640556L169.5159611990562,59.998644894640556L168.983245538405,59.998644894640556L168.80518715320102,59.998644894640556L168.6276152663173,59.99728978928112L167.56169744669464,59.998644894640556L167.38363906149067,59.998644894640556L52.24116262287461,59.998644894640556L0,59.998644894640556L0,60L52.24116262287461,60L167.38363906149067,60L167.56169744669464,60L168.6276152663173,60L168.80518715320102,60L168.983245538405,60L169.5159611990562,60L170.0491633580276,60L170.22673524491137,60L170.58236551699906,60L170.7599374038828,60L170.93750929076654,60L171.1155676759705,60L171.29313956285424,60L171.47071144973796,60L171.64828333662172,60L171.82634172182566,60L172.00391360870938,60L172.18148549559314,60L172.35905738247686,60L172.53711576768083,60L172.71468765456459,60L172.8922595414483,60L173.06983142833204,60L173.247889813536,60L173.42546170041976,60L173.60303358730349,60L173.7806054741872,60L173.95866385939115,60L174.1362357462749,60L174.31380763315863,60L174.4913795200424,60L174.66943790524635,60L174.84700979213008,60L175.0245816790138,60L175.20215356589753,60L175.38021195110153,60L175.55778383798526,60L175.73535572486898,60L175.91292761175274,60L176.09098599695668,60L176.2685578838404,60L176.44612977072416,60L176.62370165760788,60L176.80176004281185,60L176.97933192969558,60L177.15690381657933,60L177.33447570346306,60L177.51253408866702,60L177.69010597555075,60L177.8676778624345,60L178.04524974931823,60L178.2233081345222,60L178.40088002140592,60L178.57845190828968,60L178.7560237951734,60L178.93408218037735,60L179.1116540672611,60L179.28922595414483,60L179.46679784102855,60L179.64485622623252,60L179.82242811311627,60L180,60Z" fill="lightsteelblue" stroke="#666666" stroke-width="1"></path><g class="x brush" style="pointer-events: all; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><rect class="background" x="0" width="180" transform="translate(0, 0)" y="0" height="60" style="visibility: hidden; cursor: crosshair;"></rect><rect class="extent" x="0" width="0" transform="translate(0, 0)" y="0" height="60" style="cursor: move;"></rect><g class="resize e" transform="translate(0,0)" style="cursor: ew-resize; display: none;"><rect x="-3" width="6" height="60" transform="translate(0, 0)" y="0" style="visibility: hidden;"></rect></g><g class="resize w" transform="translate(0,0)" style="cursor: ew-resize; display: none;"><rect x="-3" width="6" height="60" transform="translate(0, 0)" y="0" style="visibility: hidden;"></rect></g></g></g></svg></div></ik-facet-publish-year>
    <!-- 발행년도를 단일년도로 선택을 했다면 범위선택을 할 수 없도록 날짜범위 disabled 및 제한하기 함수 가리기 -->
    <div class="ikc-date-pickers">
        <div class="ikc-date-picker ikc-date-picker-from" title="시작년도선택달력">
            <span class="k-widget k-datepicker k-header ikc-facet-years-from ng-pristine ng-untouched ng-valid ng-empty" style=""><span class="k-picker-wrap k-state-default"><input kendo-date-picker="fromPublishYearForm" class="ikc-facet-years-from ng-pristine ng-untouched ng-valid k-input ng-empty" ng-model="fromPublishYear" k-start="'decade'" k-depth="'decade'" k-format="'yyyy'" k-min="minYear" k-max="maxYear" k-rebind="maxYear" k-width="50" k-on-change="fromPublishYearChanged(fromPublishYear)" ng-disabled="!loaded || facet.size == 1" title="시작년도" data-role="datepicker" type="text" role="combobox" aria-expanded="false" aria-disabled="false" aria-readonly="false" style="width: 100%;"><span unselectable="on" class="k-select" role="button"><span unselectable="on" class="k-icon k-i-calendar">select</span></span></span></span>
        </div>
        <div class="ikc-date-picker ikc-date-picker-to" title="종료년도선택달력">
            <span class="k-widget k-datepicker k-header ikc-facet-years-to ng-pristine ng-untouched ng-valid ng-empty" style=""><span class="k-picker-wrap k-state-default"><input kendo-date-picker="toPublishYearForm" class="ikc-facet-years-to ng-pristine ng-untouched ng-valid k-input ng-empty" ng-model="toPublishYear" k-min="minYear" k-max="limitYear" k-start="'decade'" k-depth="'decade'" k-format="'yyyy'" k-rebind="minYear" k-on-change="toPublishYearChanged(toPublishYear)" ng-disabled="!loaded || facet.size == 1" title="끝년도" data-role="datepicker" type="text" role="combobox" aria-expanded="false" aria-disabled="false" aria-readonly="false" style="width: 100%;"><span unselectable="on" class="k-select" role="button"><span unselectable="on" class="k-icon k-i-calendar">select</span></span></span></span>
        </div>
        <!----><div class="ikc-date-picker-reflash" ng-if="facet.size > 1">
            <a href="" class="k-icon k-i-refresh" ng-disabled="disableYearFacetButton" ng-click="applyPublishYearFacet(facet.code)" disabled="disabled">제한하기
            </a>
        </div><!---->
    </div>

    <ul>
        <!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.value)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                2019<span class="ikc-facet-count">(12)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.value)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                2018<span class="ikc-facet-count">(24,171)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.value)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                2017<span class="ikc-facet-count">(35,300)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.value)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                2016<span class="ikc-facet-count">(37,832)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.value)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                2015<span class="ikc-facet-count">(32,664)</span>
            </a><!---->
            <!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">
        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="발행년도">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>
        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="발행년도" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>

        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!----><a href="" ng-if="multiSelectTagets[facet.code] > 1" ng-show="showFacetSelectBoxButton[facet.code]" ng-click="showFacetSelectBox(facet.code)" title="발행년도">
            <span class="k-icon k-i-multicheck"></span><span>다중선택</span>
        </a><!---->
        <a href="" ng-show="hideFacetSelectBoxButton[facet.code]" ng-click="hideFacetSelectBox(facet.code)" title="발행년도" class="ng-hide">
            <span class="k-icon k-i-cancel"></span><span>다중선택닫기</span>
        </a>

        <a href="" class="ikc-btn-facet ng-hide" ng-show="hideFacetSelectBoxButton[facet.code]" ng-disabled="checked[facet.code]" ng-click="applyMultipleFacet(facet.code)" title="발행년도" disabled="disabled">선택적용
        </a>
    </div></div></div><!----><!----></div><!----><div class="ikc-facets-box" ng-switch="" on="facet.code" ng-repeat="facet in facets"><h5 class="ikc-facets-subject"><strong>언어</strong><span class="ikc-facet-count">(20)</span></h5><!----><!----><div ng-switch-default="" class="ikc-facets"><!----><div ng-include="'facet-normal-result'"><ul>
        <!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                Korean<span class="ikc-facet-count">(495,842)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                미정의<span class="ikc-facet-count">(22,856)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                English<span class="ikc-facet-count">(2,720)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                Algonquian (Other)<span class="ikc-facet-count">(135)</span>
            </a><!---->
            <!---->
        </li><!----><li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <!---->

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <!----><a href="" ng-if="facet.size > 1" ng-click="applyFacet(facet.code, item.value, item.label)" ng-init="recordSelectAble(facet.code, item.count)" ng-disabled="!loaded">
                Japanese<span class="ikc-facet-count">(109)</span>
            </a><!---->
            <!---->
        </li><!---->
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]" ng-click="sortItems(facet.items, facet.code)" title="언어" class="ng-hide">
            <!---->
            <!---->
            <!----><span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span><!---->
            <!----><span ng-if="!facet.isNameSorted">이름순</span><!---->
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]" ng-click="expand(facet.code)" title="언어">
            <span class="k-icon k-i-plus"></span><span>더보기</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]" ng-click="collapse(facet.code)" title="언어" class="ng-hide">
            <span class="k-icon k-i-arrow-a"></span><span>접기</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <!----><a href="" ng-if="multiSelectTagets[facet.code] > 1" ng-show="showFacetSelectBoxButton[facet.code]" ng-click="showFacetSelectBox(facet.code)" title="언어">
            <span class="k-icon k-i-multicheck"></span><span>다중선택</span>
        </a><!---->
        <br ng-show="facet.size > limit[facet.code]"> <!-- 더보기/접기 시에만 줄바꿈 -->
        <!----><a href="" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-click="hideFacetSelectBox(facet.code)" title="언어" class="ng-hide">
            <span class="k-icon k-i-cancel"></span><span>다중선택닫기</span>
        </a><!---->

        <!----><a href="" class="ikc-btn-facet ng-hide" ng-if="facet.size > 1" ng-show="hideFacetSelectBoxButton[facet.code]" ng-disabled="checked[facet.code]" ng-click="applyMultipleFacet(facet.code, checked[facet.code])" title="언어" disabled="disabled">선택적용
        </a><!---->
    </div></div></div><!----></div><!----></div><script type="text/ng-template" id="facet-normal-result"><ul>
        <li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <input type="checkbox"
                   ng-if="showCheckBox[facet.code]"
                   ng-model="checkedItem[facet.code][item.value]"
                   ng-click="selectFacet(facet.code, item.value, item.label)"
                   ng-disabled="!loaded" title="{{item.label}}">

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <a href="" ng-if="facet.size > 1"
               ng-click="applyFacet(facet.code, item.value, item.label)"
               ng-init="recordSelectAble(facet.code, item.count)"
               ng-disabled="!loaded">
                {{item.label}}<span class="ikc-facet-count">({{item.count | number}})</span>
            </a>
            <span ng-if="facet.size == 1">
                {{item.label}}<span class="ikc-facet-count">({{item.count | number}})</span>
            </span>
        </li>
    </ul>
    <div class="ikc-facets-btns">

        <a href="" ng-show="collapseButton[facet.code]"
           ng-click="sortItems(facet.items, facet.code)" title="{{facetTypeLabels[facet.code]}}">
            <span class="k-icon k-i-sort-down" ng-if="facet.isNameSorted"></span>
            <span ng-if="facet.isNameSorted">{{ ::"건수순" | translate }}</span>
            <span class="k-icon k-i-sort-up" ng-if="!facet.isNameSorted"></span>
            <span ng-if="!facet.isNameSorted">{{ ::"이름순" | translate }}</span>
        </a>

        <a href="" ng-show="facet.size > limit[facet.code]"
           ng-click="expand(facet.code)" title="{{facetTypeLabels[facet.code]}}">
            <span class="k-icon k-i-plus"></span><span>{{ ::"더보기" | translate }}</span>
        </a>

        <a href="" ng-show="collapseButton[facet.code]"
           ng-click="collapse(facet.code)" title="{{facetTypeLabels[facet.code]}}">
            <span class="k-icon k-i-arrow-a"></span><span>{{ ::"접기" | translate }}</span>
        </a>


        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <a href="" ng-if="multiSelectTagets[facet.code] > 1"
           ng-show="showFacetSelectBoxButton[facet.code]"
           ng-click="showFacetSelectBox(facet.code)" title="{{facetTypeLabels[facet.code]}}">
            <span class="k-icon k-i-multicheck"></span><span>{{ ::"다중선택" | translate }}</span>
        </a>
        <br ng-show="facet.size > limit[facet.code]"/> <!-- 더보기/접기 시에만 줄바꿈 -->
        <a href="" ng-if="facet.size > 1"
           ng-show="hideFacetSelectBoxButton[facet.code]"
           ng-click="hideFacetSelectBox(facet.code)" title="{{facetTypeLabels[facet.code]}}">
            <span class="k-icon k-i-cancel"></span><span>{{ ::"다중선택닫기" | translate }}</span>
        </a>

        <a href="" class="ikc-btn-facet"
           ng-if="facet.size > 1"
           ng-show="hideFacetSelectBoxButton[facet.code]"
           ng-disabled="checked[facet.code]"
           ng-click="applyMultipleFacet(facet.code, checked[facet.code])"
           title="{{facetTypeLabels[facet.code]}}">{{ ::"선택적용" | translate }}
        </a>
    </div></script><script type="text/ng-template" id="facet-date-result"><ik-facet-publish-year data="facet.items" from="fromPublishYearChanged" to="toPublishYearChanged"></ik-facet-publish-year>
    <!-- 발행년도를 단일년도로 선택을 했다면 범위선택을 할 수 없도록 날짜범위 disabled 및 제한하기 함수 가리기 -->
    <div class="ikc-date-pickers">
        <div class="ikc-date-picker ikc-date-picker-from" title="{{ ::'시작년도선택달력' | translate }}">
            <input kendo-date-picker="fromPublishYearForm"
                   class="ikc-facet-years-from"
                   ng-model="fromPublishYear"
                   k-start="'decade'"
                   k-depth="'decade'"
                   k-format="'yyyy'"
                   k-min="minYear"
                   k-max="maxYear"
                   k-rebind="maxYear"
                   k-width="50"
                   k-on-change="fromPublishYearChanged(fromPublishYear)"
                   ng-disabled="!loaded || facet.size == 1"
                   title="{{ ::'시작년도' | translate }}">
        </div>
        <div class="ikc-date-picker ikc-date-picker-to" title="{{ ::'종료년도선택달력' | translate }}">
            <input kendo-date-picker="toPublishYearForm"
                   class="ikc-facet-years-to"
                   ng-model="toPublishYear"
                   k-min="minYear"
                   k-max="limitYear"
                   k-start="'decade'"
                   k-depth="'decade'"
                   k-format="'yyyy'"
                   k-rebind="minYear"
                   k-on-change="toPublishYearChanged(toPublishYear)"
                   ng-disabled="!loaded || facet.size == 1"
                   title="{{ ::'끝년도' | translate }}">
        </div>
        <div class="ikc-date-picker-reflash" ng-if="facet.size > 1">
            <a href="" class="k-icon k-i-refresh"
               ng-disabled="disableYearFacetButton"
               ng-click="applyPublishYearFacet(facet.code)">{{ '제한하기' | translate }}
            </a>
        </div>
    </div>

    <ul>
        <li ng-repeat="item in facet.items | limitTo: limit[facet.code]">
            <input type="checkbox"
                   ng-if="showCheckBox[facet.code]"
                   ng-model="checkedItem[facet.code][item.value]"
                   ng-click="selectFacet(facet.code, item.value, item.value)"  title="{{item.label}}">

            <!-- 제한기능은 결과리스트가 한개 이상일 경우만 필요 -->
            <a href="" ng-if="facet.size > 1"
               ng-click="applyFacet(facet.code, item.value, item.value)"
               ng-init="recordSelectAble(facet.code, item.count)"
               ng-disabled="!loaded">
                {{item.label}}<span class="ikc-facet-count">({{item.count | number}})</span>
            </a>
            <span ng-if="facet.size == 1">
                {{item.label}}<span class="ikc-facet-count">({{item.count | number}})</span>
            </span>
        </li>
    </ul>
    <div class="ikc-facets-btns">
        <a href="" ng-show="facet.size > limit[facet.code]"
           ng-click="expand(facet.code)" title="{{ :: '발행년도' | translate }}">
            <span class="k-icon k-i-plus"></span><span>{{ ::"더보기" | translate }}</span>
        </a>
        <a href="" ng-show="collapseButton[facet.code]"
           ng-click="collapse(facet.code)" title="{{ :: '발행년도' | translate }}">
            <span class="k-icon k-i-arrow-a"></span><span>{{ ::"접기" | translate }}</span>
        </a>

        <!-- 표시조건: 패싯결과 리스트의 개수가 2건이상인 경우만 표시 -->
        <a href="" ng-if="multiSelectTagets[facet.code] > 1"
           ng-show="showFacetSelectBoxButton[facet.code]"
           ng-click="showFacetSelectBox(facet.code)" title="{{ ::'발행년도' | translate }}">
            <span class="k-icon k-i-multicheck"></span><span>{{ :: "다중선택" | translate }}</span>
        </a>
        <a href="" ng-show="hideFacetSelectBoxButton[facet.code]"
           ng-click="hideFacetSelectBox(facet.code)" title="{{ :: '발행년도' | translate }}">
            <span class="k-icon k-i-cancel"></span><span>{{ ::"다중선택닫기" | translate }}</span>
        </a>

        <a href="" class="ikc-btn-facet"
           ng-show="hideFacetSelectBoxButton[facet.code]"
           ng-disabled="checked[facet.code]"
           ng-click="applyMultipleFacet(facet.code)" title="{{ :: '발행년도' | translate }}">{{ ::"선택적용" | translate }}
        </a>
    </div></script></div>
	
	
	