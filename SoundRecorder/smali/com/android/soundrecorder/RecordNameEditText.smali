.class public Lcom/android/soundrecorder/RecordNameEditText;
.super Landroid/widget/EditText;
.source "RecordNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;
    }
.end annotation


# instance fields
.field private mDir:Ljava/lang/String;

.field private mExtension:Ljava/lang/String;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

.field private mOriginalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/soundrecorder/RecordNameEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 37
    iput-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/soundrecorder/RecordNameEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/soundrecorder/RecordNameEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    .line 52
    return-void
.end method

.method private getProperFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 73
    move-object v2, p1

    .line 75
    .local v2, uniqueName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/RecordNameEditText;->isFileExisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v0, 0x2

    .line 78
    .local v0, i:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, temp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->isFileExisted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    move-object v2, v1

    .line 86
    .end local v0           #i:I
    .end local v1           #temp:Ljava/lang/String;
    :cond_0
    return-object v2

    .line 83
    .restart local v0       #i:I
    .restart local v1       #temp:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_0
.end method

.method private isFileExisted(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/soundrecorder/RecordNameEditText;->mDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/soundrecorder/RecordNameEditText;->mExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, fullName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public initFileName(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "dir"
    .parameter "extension"
    .parameter "englishOnly"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mDir:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/android/soundrecorder/RecordNameEditText;->mExtension:Ljava/lang/String;

    .line 63
    if-nez p3, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mContext:Landroid/content/Context;

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->getProperFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, dataFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rec_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->getProperFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 126
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    invoke-interface {v1, v0}, Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;->onNameChanged(Ljava/lang/String;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordNameEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 143
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 135
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mOriginalName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mOriginalName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_0

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    invoke-interface {v1, v0}, Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;->onNameChanged(Ljava/lang/String;)V

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 113
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecordNameEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 114
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mOriginalName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public setNameChangeListener(Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/soundrecorder/RecordNameEditText;->mNameChangeListener:Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;

    .line 56
    return-void
.end method
