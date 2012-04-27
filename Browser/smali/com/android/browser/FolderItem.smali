.class Lcom/android/browser/FolderItem;
.super Landroid/widget/LinearLayout;
.source "FolderItem.java"


# instance fields
.field protected mFolder:I

.field protected mImageView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030014

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/android/browser/FolderItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    .line 38
    const v1, 0x7f0d0006

    invoke-virtual {p0, v1}, Lcom/android/browser/FolderItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/FolderItem;->mImageView:Landroid/widget/ImageView;

    .line 39
    return-void
.end method


# virtual methods
.method copyTo(Lcom/android/browser/FolderItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 46
    iget-object v0, p1, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p1, Lcom/android/browser/FolderItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/FolderItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method getFolder()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/browser/FolderItem;->mFolder:I

    return v0
.end method

.method setFolder(I)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/browser/FolderItem;->mFolder:I

    .line 94
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method setThumbnailIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/browser/FolderItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/browser/FolderItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
