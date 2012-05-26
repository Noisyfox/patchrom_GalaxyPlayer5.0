.class public Lcom/android/settings/DefaultApplicationPreference;
.super Landroid/preference/PreferenceCategory;
.source "DefaultApplicationPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static KEY_CLEAR_DEFAULT:Ljava/lang/String;


# instance fields
.field private mDefault:Landroid/preference/Preference;

.field private mDefaultIndex:I

.field private mIntent:Landroid/content/Intent;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "clear_default"

    sput-object v0, Lcom/android/settings/DefaultApplicationPreference;->KEY_CLEAR_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DefaultApplicationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultApplicationPreference;->setPersistent(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private enumerateActivities()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    const v6, 0x10040

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, ri:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/DefaultApplicationPreference;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    new-instance v1, Landroid/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v4, 0x7f09045f

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/DefaultApplicationPreference;->addPreference(Landroid/preference/Preference;)Z

    sget-object v4, Lcom/android/settings/DefaultApplicationPreference;->KEY_CLEAR_DEFAULT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method

.method private updateDefaultActivity()V
    .locals 29

    .prologue
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultApplicationPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, oldPackageName:Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_0
    sget-object v25, Lcom/android/settings/DefaultApplicationPreference;->KEY_CLEAR_DEFAULT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mDefault:Landroid/preference/Preference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .local v23, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_1

    .end local v15           #i$:Ljava/util/Iterator;
    .end local v23           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mDefaultIndex:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .restart local v23       #ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .local v13, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .local v10, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, cat:Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    .end local v9           #cat:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v25, "android.intent.category.DEFAULT"

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v25, v0

    const/high16 v26, 0xfff

    and-int v9, v25, v26

    .local v9, cat:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .local v11, data:Landroid/net/Uri;
    const/high16 v25, 0x60

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DefaultApplicationPreference;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .local v16, mimeType:Ljava/lang/String;
    if-eqz v16, :cond_5

    :try_start_0
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16           #mimeType:Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_a

    const/high16 v25, 0x60

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const-string v25, "file"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    const-string v25, "content"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    :cond_6
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v7, :cond_8

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .local v6, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v11}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v25

    if-ltz v25, :cond_7

    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v21

    .local v21, port:I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v25

    if-ltz v21, :cond_c

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    :goto_4
    move-object v0, v13

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v21           #port:I
    :cond_8
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v19, :cond_a

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    .local v20, path:Ljava/lang/String;
    :cond_9
    if-eqz v20, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PatternMatcher;

    .local v18, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getType()I

    move-result v26

    move-object v0, v13

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18           #p:Landroid/os/PatternMatcher;
    .end local v19           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v20           #path:Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    .local v5, N:I
    move v0, v5

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v24, v0

    .local v24, set:[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, bestMatch:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5
    if-ge v14, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mResolveInfoList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .local v22, r:Landroid/content/pm/ResolveInfo;
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v24, v14

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v25, v0

    move/from16 v0, v25

    move v1, v8

    if-le v0, v1, :cond_b

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move v8, v0

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v14           #i:I
    .end local v22           #r:Landroid/content/pm/ResolveInfo;
    .end local v24           #set:[Landroid/content/ComponentName;
    .restart local v16       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v25, "ResolverActivity"

    move-object/from16 v0, v25

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    goto/16 :goto_3

    .end local v12           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v16           #mimeType:Ljava/lang/String;
    .restart local v6       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v7       #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v21       #port:I
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_4

    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v21           #port:I
    .restart local v5       #N:I
    .restart local v8       #bestMatch:I
    .restart local v14       #i:I
    .restart local v24       #set:[Landroid/content/ComponentName;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mIntent:Landroid/content/Intent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    move-object/from16 v0, v25

    move-object v1, v13

    move v2, v8

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v14           #i:I
    .end local v24           #set:[Landroid/content/ComponentName;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DefaultApplicationPreference;->mDefault:Landroid/preference/Preference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultApplicationPreference;->persistString(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceCategory;->onAttachedToActivity()V

    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->removeAll()V

    invoke-direct {p0}, Lcom/android/settings/DefaultApplicationPreference;->enumerateActivities()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->getPreferenceCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/DefaultApplicationPreference;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .local v3, pref:Landroid/preference/CheckBoxPreference;
    if-ne v3, p1, :cond_0

    iput-object v3, p0, Lcom/android/settings/DefaultApplicationPreference;->mDefault:Landroid/preference/Preference;

    iput v1, p0, Lcom/android/settings/DefaultApplicationPreference;->mDefaultIndex:I

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DefaultApplicationPreference;->updateDefaultActivity()V

    invoke-virtual {p0}, Lcom/android/settings/DefaultApplicationPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .local v2, parent:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    return v5
.end method
