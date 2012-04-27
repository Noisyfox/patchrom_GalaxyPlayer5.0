.class public Lcom/android/browser/AddFolderPage;
.super Landroid/app/Activity;
.source "AddFolderPage.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mButton:Landroid/widget/TextView;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/view/View;

.field private mEditExisting:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMap:Landroid/os/Bundle;

.field private mSaveFolder:Landroid/view/View$OnClickListener;

.field private mTitle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "Folders"

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->LOGTAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/browser/AddFolderPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddFolderPage$1;-><init>(Lcom/android/browser/AddFolderPage;)V

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->mSaveFolder:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/android/browser/AddFolderPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddFolderPage$2;-><init>(Lcom/android/browser/AddFolderPage;)V

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddFolderPage;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/browser/AddFolderPage;->updateFolderDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/browser/AddFolderPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/AddFolderPage$3;-><init>(Lcom/android/browser/AddFolderPage;)V

    iput-object v0, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    .line 133
    :cond_0
    return-void
.end method

.method private hasDuplicateFolder(Ljava/lang/String;)Z
    .locals 4
    .parameter "title"

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 151
    .local v2, retValue:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    invoke-static {v3, v0, p1}, Lcom/android/browser/Folders;->hasDuplicateFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    .line 157
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v3

    .line 154
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 155
    .local v1, e:Ljava/lang/IllegalStateException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateFolderDB(Ljava/lang/String;)Z
    .locals 3
    .parameter "title"

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    invoke-static {v2, v0, p1}, Lcom/android/browser/Folders;->addFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v2, 0x1

    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v2

    .line 141
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 142
    .local v1, e:Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v6}, Lcom/android/browser/AddFolderPage;->requestWindowFeature(I)Z

    .line 71
    const v4, 0x7f030008

    invoke-virtual {p0, v4}, Lcom/android/browser/AddFolderPage;->setContentView(I)V

    .line 72
    const v4, 0x7f090135

    invoke-virtual {p0, v4}, Lcom/android/browser/AddFolderPage;->setTitle(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020031

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 75
    const/4 v3, 0x0

    .line 77
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    .line 78
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v5, "folder"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 80
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 81
    iput-object v2, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    .line 82
    iput-boolean v7, p0, Lcom/android/browser/AddFolderPage;->mEditExisting:Z

    .line 83
    const-string v4, "Folders"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AddFolderPage: OnCreate editing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/browser/AddFolderPage;->mEditExisting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const v4, 0x7f09013a

    invoke-virtual {p0, v4}, Lcom/android/browser/AddFolderPage;->setTitle(I)V

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .end local v2           #b:Landroid/os/Bundle;
    :cond_1
    const v4, 0x7f0d0007

    invoke-virtual {p0, v4}, Lcom/android/browser/AddFolderPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    .line 90
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-array v0, v7, [Landroid/text/InputFilter;

    .line 93
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xff

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v4

    .line 94
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 95
    iget-object v1, p0, Lcom/android/browser/AddFolderPage;->mSaveFolder:Landroid/view/View$OnClickListener;

    .line 96
    .local v1, accept:Landroid/view/View$OnClickListener;
    const v4, 0x7f0d001d

    invoke-virtual {p0, v4}, Lcom/android/browser/AddFolderPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/browser/AddFolderPage;->mButton:Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v4, 0x7f0d001e

    invoke-virtual {p0, v4}, Lcom/android/browser/AddFolderPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddFolderPage;->mCancelButton:Landroid/view/View;

    .line 100
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mCancelButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method save()Z
    .locals 12

    .prologue
    const/4 v11, -0x1

    const v9, 0x7f09013f

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "title"

    .line 165
    invoke-direct {p0}, Lcom/android/browser/AddFolderPage;->createHandler()V

    .line 167
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move v1, v8

    .line 170
    .local v1, emptyTitle:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 172
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 173
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    const v6, 0x7f09013e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 212
    :goto_1
    return v5

    .end local v1           #emptyTitle:Z
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_0
    move v1, v7

    .line 168
    goto :goto_0

    .line 177
    .restart local v1       #emptyTitle:Z
    .restart local v3       #r:Landroid/content/res/Resources;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/browser/AddFolderPage;->hasDuplicateFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v7

    .line 180
    goto :goto_1

    .line 183
    :cond_2
    iget-boolean v5, p0, Lcom/android/browser/AddFolderPage;->mEditExisting:Z

    if-eqz v5, :cond_4

    .line 185
    invoke-direct {p0, v4}, Lcom/android/browser/AddFolderPage;->hasDuplicateFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v6, "title"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 188
    goto :goto_1

    .line 191
    :cond_3
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    const-string v6, "title"

    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v5, "Folders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AddFolderPage: save() title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/AddFolderPage;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/AddFolderPage;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/AddFolderPage;->mMap:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v11, v5}, Lcom/android/browser/AddFolderPage;->setResult(ILandroid/content/Intent;)V

    :goto_2
    move v5, v8

    .line 212
    goto :goto_1

    .line 198
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/browser/AddFolderPage;->hasDuplicateFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v5, v7

    .line 201
    goto/16 :goto_1

    .line 204
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "title"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc7

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 207
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 208
    iget-object v5, p0, Lcom/android/browser/AddFolderPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    invoke-virtual {p0, v11}, Lcom/android/browser/AddFolderPage;->setResult(I)V

    goto :goto_2
.end method
