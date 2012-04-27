.class Lcom/android/browser/TextSelector;
.super Ljava/lang/Object;
.source "TextSelector.java"

# interfaces
.implements Landroid/webkit/WebView$WebTextSelectionListener;


# instance fields
.field private mIconPopup:Lcom/android/browser/IconPopupMenu;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mToolTip:Lcom/android/browser/ToolTip;

.field private m_nChangeCount:I

.field private m_nState:I


# direct methods
.method constructor <init>(Lcom/android/browser/TabControl;)V
    .locals 2
    .parameter "tc"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/browser/TextSelector;->mToolTip:Lcom/android/browser/ToolTip;

    .line 64
    iput-object v1, p0, Lcom/android/browser/TextSelector;->mTabControl:Lcom/android/browser/TabControl;

    .line 66
    iput v0, p0, Lcom/android/browser/TextSelector;->m_nState:I

    .line 67
    iput v0, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    .line 74
    iput-object p1, p0, Lcom/android/browser/TextSelector;->mTabControl:Lcom/android/browser/TabControl;

    .line 75
    return-void
.end method

.method private createToolTip()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 94
    .local v0, vWebView:Landroid/webkit/WebView;
    new-instance v1, Lcom/android/browser/IconPopupMenu;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/browser/IconPopupMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    .line 97
    iget-object v1, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    const v2, 0x7f020053

    new-instance v3, Lcom/android/browser/CopyText;

    const v4, 0x7f090057

    invoke-direct {v3, p0, v4}, Lcom/android/browser/CopyText;-><init>(Lcom/android/browser/TextSelector;I)V

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/browser/IconPopupMenu;->addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    const v2, 0x7f020054

    new-instance v3, Lcom/android/browser/SearchText;

    const v4, 0x7f090130

    invoke-direct {v3, p0, v4}, Lcom/android/browser/SearchText;-><init>(Lcom/android/browser/TextSelector;I)V

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/browser/IconPopupMenu;->addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    const v2, 0x7f020055

    new-instance v3, Lcom/android/browser/ShareText;

    const v4, 0x7f090131

    invoke-direct {v3, p0, v4}, Lcom/android/browser/ShareText;-><init>(Lcom/android/browser/TextSelector;I)V

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/browser/IconPopupMenu;->addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    invoke-virtual {v0}, Lcom/android/browser/IconPopupMenu;->hide()V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public GetTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/browser/TextSelector;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method public clearSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/browser/TextSelector;->hide()V

    .line 109
    invoke-virtual {p0}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->ClearWebTextSelection()V

    .line 112
    :cond_0
    iput v1, p0, Lcom/android/browser/TextSelector;->m_nState:I

    .line 113
    iput v1, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    .line 114
    return-void
.end method

.method public getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/TextSelector;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/browser/TextSelector;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionChanged(I)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    invoke-direct {p0}, Lcom/android/browser/TextSelector;->hide()V

    goto :goto_0

    .line 158
    :pswitch_2
    iput v4, p0, Lcom/android/browser/TextSelector;->m_nState:I

    .line 160
    invoke-virtual {p0}, Lcom/android/browser/TextSelector;->clearSelection()V

    goto :goto_0

    .line 165
    :pswitch_3
    iput v6, p0, Lcom/android/browser/TextSelector;->m_nState:I

    .line 166
    iget v3, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    .line 168
    invoke-direct {p0}, Lcom/android/browser/TextSelector;->hide()V

    goto :goto_0

    .line 174
    :pswitch_4
    iget v3, p0, Lcom/android/browser/TextSelector;->m_nState:I

    if-eqz v3, :cond_0

    .line 183
    iget v3, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    .line 184
    iget v3, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    if-gtz v3, :cond_0

    .line 188
    :pswitch_5
    iput v5, p0, Lcom/android/browser/TextSelector;->m_nState:I

    .line 189
    if-ne v6, p1, :cond_1

    .line 190
    iput v4, p0, Lcom/android/browser/TextSelector;->m_nChangeCount:I

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/TextSelector;->createToolTip()V

    .line 194
    invoke-virtual {p0}, Lcom/android/browser/TextSelector;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 195
    .local v2, vWebView:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 199
    .local v1, rtSelection:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 204
    .local v0, ptPopup:Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 205
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 206
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 207
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 212
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_4

    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_4

    :cond_3
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_4

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 219
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/TextSelector;->hide()V

    goto/16 :goto_0

    .line 228
    :cond_5
    iget-object v3, p0, Lcom/android/browser/TextSelector;->mIconPopup:Lcom/android/browser/IconPopupMenu;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/browser/IconPopupMenu;->show(Landroid/graphics/Rect;ILandroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
