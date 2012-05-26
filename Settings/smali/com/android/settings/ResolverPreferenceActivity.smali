.class public Lcom/android/settings/ResolverPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ResolverPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResolverPreferenceActivity$NameComparator;
    }
.end annotation


# instance fields
.field private mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIntent:Landroid/content/Intent;

.field private mText:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private intentForPosition(I)Landroid/content/Intent;
    .locals 5
    .parameter "position"

    .prologue
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/ResolverPreferenceActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/ResolverPreferenceActivity;->mResolveList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private resolveIntent()V
    .locals 9

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .local v5, screen:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    .local v3, pref:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mTargetIntent:Landroid/content/Intent;

    const/high16 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mResolveList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mResolveList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .local v6, size:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/ResolverPreferenceActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/ResolverPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040307

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mText:Ljava/lang/CharSequence;

    :goto_1
    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .local v0, category:Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v6, :cond_3

    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mResolveList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, ri:Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/preference/PreferenceScreen;

    .end local v3           #pref:Landroid/preference/PreferenceScreen;
    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v3       #pref:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v1}, Lcom/android/settings/ResolverPreferenceActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    .end local v1           #i:I
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/ResolverPreferenceActivity;->mResolveList:Ljava/util/List;

    new-instance v8, Lcom/android/settings/ResolverPreferenceActivity$NameComparator;

    invoke-direct {v8, v2}, Lcom/android/settings/ResolverPreferenceActivity$NameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/ResolverPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .local v1, targetParcelable:Landroid/os/Parcelable;
    instance-of v2, v1, Landroid/content/Intent;

    if-nez v2, :cond_0

    const-string v2, "ResolverPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target is not an intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->finish()V

    .end local v1           #targetParcelable:Landroid/os/Parcelable;
    :goto_0
    return-void

    .restart local v1       #targetParcelable:Landroid/os/Parcelable;
    :cond_0
    check-cast v1, Landroid/content/Intent;

    .end local v1           #targetParcelable:Landroid/os/Parcelable;
    iput-object v1, p0, Lcom/android/settings/ResolverPreferenceActivity;->mTargetIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ResolverPreferenceActivity;->mTitle:Ljava/lang/CharSequence;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ResolverPreferenceActivity;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/ResolverPreferenceActivity;->resolveIntent()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/ResolverPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ResolverPreferenceActivity;->finish()V

    const/4 v1, 0x1

    return v1
.end method
