[#if content.quotation?has_content]
<blockquote>
    ${cmsfn.decode(content).quotation}
    [#if content.citedPerson?has_content]<cite>${content.citedPerson}</cite>[/#if]
    [#if content.quoteSource?has_content]<div class="quoteSource">${content.quoteSource}</div>[/#if]
</blockquote>
[/#if]