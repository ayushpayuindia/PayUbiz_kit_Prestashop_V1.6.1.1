

{if $status == 'ok'}
    <p>{l s='Your order on' mod='payubiz'} <span class="bold">{$shop_name}</span> {l s='is complete.' mod='payubiz'}
        <br /><br /><span class="bold">{l s='Your order will be shipped as soon as possible.' mod='payubiz'}</span>
        <br /><br />{l s='For any questions or for further information, please contact our' mod='payubiz'} <a href="{$link->getPageLink('contact', true)}">{l s='customer support' mod='payubiz'}</a>.
    </p>
{else}
    {if $status == 'pending'}
        <p>{l s='Your order on' mod='payubiz'} <span class="bold">{$shop_name}</span> {l s='is pending.' mod='payubiz'}
            <br /><br /><span class="bold">{l s='Your order will be shipped as soon as we receive your bankwire.' mod='payubiz'}</span>
            <br /><br />{l s='For any questions or for further information, please contact our' mod='payubiz'} <a href="{$link->getPageLink('contact', true)}">{l s='customer support' mod='payubiz'}</a>.
        </p>
    {else}
        <p class="warning">
            {l s='We noticed a problem with your order. If you think this is an error, you can contact our' mod='payubiz'} 
            <a href="{$link->getPageLink('contact', true)}">{l s='customer support' mod='payubiz'}</a>.
        </p>
    {/if}
{/if}
