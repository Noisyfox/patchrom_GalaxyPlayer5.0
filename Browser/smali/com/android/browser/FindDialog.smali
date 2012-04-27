.class Lcom/android/browser/FindDialog;
.super Lcom/android/browser/WebDialog;
.source "FindDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mFindListener:Landroid/view/View$OnClickListener;

.field private mFindPreviousListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mMatchesView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mNumberOfMatches:I

.field private mPrevButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/browser/WebDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 73
    new-instance v2, Lcom/android/browser/FindDialog$2;

    invoke-direct {v2, p0}, Lcom/android/browser/FindDialog$2;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v2, Lcom/android/browser/FindDialog$3;

    invoke-direct {v2, p0}, Lcom/android/browser/FindDialog$3;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 102
    .local v1, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f03000c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->addCancel()V

    .line 105
    const v2, 0x7f0d0037

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    .line 107
    const v2, 0x7f0d0011

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, button:Landroid/view/View;
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    .line 111
    const v2, 0x7f0d0010

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    .line 115
    const v2, 0x7f0d003a

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f0d0039

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    .line 117
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 118
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->createHandler()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/FindDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->updateMatchesString()V

    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/browser/FindDialog$1;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$1;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mHandler:Landroid/os/Handler;

    .line 71
    :cond_0
    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    return-void
.end method

.method private findAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 218
    iget-object v2, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 219
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No WebView for FindDialog::findAll"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 223
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 225
    iget-object v2, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearMatches()V

    .line 226
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, found:I
    iput-boolean v4, p0, Lcom/android/browser/FindDialog;->mMatchesFound:Z

    .line 231
    invoke-direct {p0, v1}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 232
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 234
    if-nez v1, :cond_1

    goto :goto_0

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private findNext()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 178
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->updateMatchesString()V

    .line 179
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 180
    return-void
.end method

.method private setMatchesFound(I)V
    .locals 0
    .parameter "found"

    .prologue
    .line 252
    iput p1, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    .line 253
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->updateMatchesString()V

    .line 254
    return-void
.end method

.method private updateMatchesString()V
    .locals 7

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    iget v3, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/browser/FindDialog;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, template:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 273
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 208
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/browser/WebDialog;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/android/browser/WebDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->notifyFindDialogDismissed()V

    .line 130
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 131
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 156
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 157
    const/16 v2, 0x42

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-boolean v2, p0, Lcom/android/browser/FindDialog;->mMatchesFound:Z

    if-eqz v2, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    :goto_0
    move v2, v3

    .line 170
    :goto_1
    return v2

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findAll()V

    .line 164
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 165
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 170
    .end local v1           #span:Landroid/text/Spannable;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/WebDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 137
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 139
    .local v0, action:I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v2, v4

    .line 150
    .end local v0           #action:I
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v2

    .line 143
    .restart local v0       #action:I
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    if-ne v4, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/browser/WebDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    move v2, v4

    .line 146
    goto :goto_0

    .line 150
    .end local v0           #action:I
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/WebDialog;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findAll()V

    .line 215
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findAll()V

    .line 259
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-super {p0}, Lcom/android/browser/WebDialog;->show()V

    .line 185
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iput-boolean v4, p0, Lcom/android/browser/FindDialog;->mMatchesFound:Z

    .line 188
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 190
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 191
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 192
    .local v0, length:I
    invoke-static {v1, v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 193
    const/16 v2, 0x12

    invoke-interface {v1, p0, v4, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 194
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 198
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/FindDialog;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    return-void
.end method
