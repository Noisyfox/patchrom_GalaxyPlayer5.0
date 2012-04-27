.class Lcom/android/browser/AddNewBookmark;
.super Landroid/widget/LinearLayout;
.source "AddNewBookmark.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/AddNewBookmark;->setWillNotDraw(Z)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/android/browser/AddNewBookmark;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/AddNewBookmark;->mTextView:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lcom/android/browser/AddNewBookmark;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/AddNewBookmark;->mUrlText:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0d0006

    invoke-virtual {p0, v1}, Lcom/android/browser/AddNewBookmark;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/AddNewBookmark;->mImageView:Landroid/widget/ImageView;

    .line 49
    return-void
.end method


# virtual methods
.method setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/browser/AddNewBookmark;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
