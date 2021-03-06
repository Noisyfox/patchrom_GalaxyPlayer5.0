.class Lcom/android/browser/BrowserRssLinksItem;
.super Landroid/widget/LinearLayout;
.source "BrowserRssLinksItem.java"


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;

.field protected mUrl:Ljava/lang/String;

.field protected mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f03001f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserRssLinksItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/BrowserRssLinksItem;->mTextView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0d006b

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserRssLinksItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrlText:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d0006

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserRssLinksItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/BrowserRssLinksItem;->mImageView:Landroid/widget/ImageView;

    .line 65
    return-void
.end method


# virtual methods
.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iput-object p1, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrl:Ljava/lang/String;

    .line 120
    return-void
.end method
