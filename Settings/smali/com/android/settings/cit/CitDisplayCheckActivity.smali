.class public Lcom/android/settings/cit/CitDisplayCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitDisplayCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;
    }
.end annotation


# instance fields
.field private mPictureSet:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitDisplayCheckActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitDisplayCheckActivity;->showNextPicture()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090508

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPictureSet()V
    .locals 9

    .prologue
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const/high16 v8, -0x100

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const/4 v8, -0x1

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const v8, -0x777778

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const/high16 v8, -0x1

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const v8, -0xff0100

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const v8, -0xffff01

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    const/16 v8, -0x100

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .local v5, sdroot:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".bmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sdroot:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private showNextPicture()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;

    .local v1, picture:Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;
    invoke-virtual {v1, p0}, Lcom/android/settings/cit/CitDisplayCheckActivity$Picture;->getImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/cit/CitDisplayCheckActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cit/CitDisplayCheckActivity$2;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitDisplayCheckActivity;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/cit/CitDisplayCheckActivity;->mPictureSet:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitDisplayCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090535

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitDisplayCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090571

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitDisplayCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/cit/CitDisplayCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitDisplayCheckActivity$1;-><init>(Lcom/android/settings/cit/CitDisplayCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/cit/CitDisplayCheckActivity;->initPictureSet()V

    return-void
.end method
