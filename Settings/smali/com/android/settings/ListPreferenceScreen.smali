.class public Lcom/android/settings/ListPreferenceScreen;
.super Landroid/preference/Preference;
.source "ListPreferenceScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ListPreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mAutoDismiss:Z

.field private mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

.field private mDialog:Landroid/app/Dialog;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIcons:[I

.field private mIconsResourceId:I

.field private mRootScreen:Landroid/preference/PreferenceScreen;

.field private mValue:Ljava/lang/String;

.field private mValueIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    const v1, 0x109006c

    invoke-virtual {p0, v1}, Lcom/android/settings/ListPreferenceScreen;->setWidgetLayoutResource(I)V

    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/settings/R$styleable;->ListPreferenceScreen:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ListPreferenceScreen;->mIconsResourceId:I

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ListPreferenceScreen;->mAutoDismiss:Z

    iget v1, p0, Lcom/android/settings/ListPreferenceScreen;->mIconsResourceId:I

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ListPreferenceScreen;->mIconsResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mIcons:[I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ListPreferenceScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ListPreferenceScreen;->updateValue()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ListPreferenceScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ListPreferenceScreen;->dismiss()V

    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/Dialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    const v5, 0x10300e7

    invoke-direct {v1, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .restart local v1       #dialog:Landroid/app/Dialog;
    const v5, 0x7f030046

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    const v5, 0x1020016

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, titleView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x102000a

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .local v3, listView:Landroid/widget/ListView;
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v2, footerView:Landroid/view/View;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/ListPreferenceScreen;->setupButtons(Landroid/app/Dialog;)V

    iget-object v5, p0, Lcom/android/settings/ListPreferenceScreen;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    return-object v1
.end method

.method private dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    return v0
.end method

.method private setupButtons(Landroid/app/Dialog;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const v3, 0x7f0c00c0

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .local v0, buttons:Landroid/widget/LinearLayout;
    iget-boolean v3, p0, Lcom/android/settings/ListPreferenceScreen;->mAutoDismiss:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/ListPreferenceScreen;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    new-instance v4, Lcom/android/settings/ListPreferenceScreen$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ListPreferenceScreen$1;-><init>(Lcom/android/settings/ListPreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreferenceCategory;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    return-void

    :cond_0
    const v3, 0x7f0c00c1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .local v2, doneBtn:Landroid/widget/Button;
    const v3, 0x7f0c00c2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .local v1, cancelBtn:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/ListPreferenceScreen$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ListPreferenceScreen$2;-><init>(Lcom/android/settings/ListPreferenceScreen;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/settings/ListPreferenceScreen$3;

    invoke-direct {v3, p0}, Lcom/android/settings/ListPreferenceScreen$3;-><init>(Lcom/android/settings/ListPreferenceScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ListPreferenceScreen;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mDialog:Landroid/app/Dialog;

    :cond_0
    iget v0, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    iget v1, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreferenceCategory;->setCheckedPosition(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateValue()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/settings/ListPreferenceScreen;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreferenceCategory;->getCheckedPosition()I

    move-result v0

    .local v0, index:I
    const/4 v1, 0x0

    .local v1, value:Ljava/lang/String;
    if-ltz v0, :cond_0

    iput v0, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    iget-object v2, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ListPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/ListPreferenceScreen;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ListPreferenceScreen;->dismiss()V

    return-void
.end method


# virtual methods
.method protected createPreferenceScreen()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mRootScreen:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mRootScreen:Landroid/preference/PreferenceScreen;

    new-instance v4, Landroid/preference/CheckBoxPreferenceCategory;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/preference/CheckBoxPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    const/4 v2, 0x0

    .local v2, pref:Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mRootScreen:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/ListPreferenceScreen;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v4

    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v2, Landroid/preference/RadioButtonPreference;

    .end local v2           #pref:Landroid/preference/CheckBoxPreference;
    invoke-direct {v2, v0}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .restart local v2       #pref:Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mIcons:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mIcons:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setImageResource(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/ListPreferenceScreen;->mCheckBoxPreferences:Landroid/preference/CheckBoxPreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .end local v0           #i:I
    :goto_1
    return v1

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ListPreferenceScreen;->getValueIndex()I

    move-result v0

    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ListPreferenceScreen;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->createPreferenceScreen()V

    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    invoke-direct {p0}, Lcom/android/settings/ListPreferenceScreen;->showDialog()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/ListPreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/settings/ListPreferenceScreen$SavedState;

    invoke-virtual {p1}, Lcom/android/settings/ListPreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/android/settings/ListPreferenceScreen$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ListPreferenceScreen;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Lcom/android/settings/ListPreferenceScreen$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/ListPreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, myState:Lcom/android/settings/ListPreferenceScreen$SavedState;
    invoke-virtual {p0}, Lcom/android/settings/ListPreferenceScreen;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/ListPreferenceScreen$SavedState;->value:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ListPreferenceScreen;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ListPreferenceScreen;->setValue(Ljava/lang/String;)V

    return-void

    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    iput-object p1, p0, Lcom/android/settings/ListPreferenceScreen;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/ListPreferenceScreen;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    invoke-virtual {p0, p1}, Lcom/android/settings/ListPreferenceScreen;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ListPreferenceScreen;->setValue(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/settings/ListPreferenceScreen;->mValueIndex:I

    :cond_0
    return-void
.end method
