.class public Lcom/android/settings/ZoneList;
.super Landroid/preference/PreferenceActivity;
.source "ZoneList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ZoneList$MyComparator;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mAlphabeticalCategory:Landroid/preference/PreferenceCategory;

.field private mDefault:I

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

.field private mTimezoneSortedCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getZones()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const-string v12, "ZoneList"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, date:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ZoneList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f040036

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .local v8, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v11, :cond_5

    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v10, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .end local v8           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object v1

    .restart local v8       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v8           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "ZoneList"

    const-string v0, "Ill-formatted timezones.xml file"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "timezone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .local v2, id:Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .local v3, displayName:Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ZoneList;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .end local v2           #id:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v11, :cond_4

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .end local v8           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    move-object v6, v0

    .local v6, ioe:Ljava/io/IOException;
    const-string v0, "ZoneList"

    const-string v0, "Unable to read timezones.xml file"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v8       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private setSorting(Z)V
    .locals 2
    .parameter "timezone"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/ZoneList;->mAlphabeticalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/ZoneList;->mTimezoneSortedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/ZoneList;->mSortedByTimezone:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/ZoneList;->mTimezoneSortedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/ZoneList;->mAlphabeticalCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter "id"
    .parameter "displayName"
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;
    const-string v6, "id"

    invoke-virtual {v0, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    invoke-virtual {v0, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .local v5, tz:Ljava/util/TimeZone;
    invoke-virtual {v5, p4, p5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .local v3, offset:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .local v4, p:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, name:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v3, :cond_2

    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const v6, 0x36ee80

    div-int v6, v4, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v6, 0xea60

    div-int v1, v4, v6

    .local v1, min:I
    rem-int/lit8 v1, v1, 0x3c

    const/16 v6, 0xa

    if-ge v1, v6, :cond_0

    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "gmt"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/ZoneList;->mDefault:I

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .end local v1           #min:I
    :cond_2
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ZoneList;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    new-instance v2, Landroid/preference/PreferenceCategory;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ZoneList;->mTimezoneSortedCategory:Landroid/preference/PreferenceCategory;

    new-instance v2, Landroid/preference/PreferenceCategory;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ZoneList;->mAlphabeticalCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mTimezoneSortedCategory:Landroid/preference/PreferenceCategory;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mAlphabeticalCategory:Landroid/preference/PreferenceCategory;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "gmt"

    aput-object v3, v6, v2

    .local v6, from:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    .local v7, to:[I
    new-instance v14, Lcom/android/settings/ZoneList$MyComparator;

    const-string v2, "offset"

    invoke-direct {v14, v2}, Lcom/android/settings/ZoneList$MyComparator;-><init>(Ljava/lang/String;)V

    .local v14, comparator:Lcom/android/settings/ZoneList$MyComparator;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ZoneList;->getZones()Ljava/util/List;

    move-result-object v4

    .local v4, timezoneSortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {v4, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .local v16, map:Ljava/util/HashMap;
    new-instance v17, Landroid/preference/Preference;

    invoke-direct/range {v17 .. v18}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .local v17, pref:Landroid/preference/Preference;
    const-string v2, "name"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "gmt"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "id"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mTimezoneSortedCategory:Landroid/preference/PreferenceCategory;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v16           #map:Ljava/util/HashMap;
    .end local v17           #pref:Landroid/preference/Preference;
    :cond_0
    new-instance v2, Landroid/widget/SimpleAdapter;

    const v5, 0x1090004

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ZoneList;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v10, alphabeticalList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    const-string v2, "name"

    invoke-virtual {v14, v2}, Lcom/android/settings/ZoneList$MyComparator;->setSortingKey(Ljava/lang/String;)V

    invoke-static {v10, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .restart local v16       #map:Ljava/util/HashMap;
    new-instance v17, Landroid/preference/Preference;

    invoke-direct/range {v17 .. v18}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .restart local v17       #pref:Landroid/preference/Preference;
    const-string v2, "name"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "gmt"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "id"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mAlphabeticalCategory:Landroid/preference/PreferenceCategory;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .end local v16           #map:Ljava/util/HashMap;
    .end local v17           #pref:Landroid/preference/Preference;
    :cond_1
    new-instance v8, Landroid/widget/SimpleAdapter;

    const v11, 0x1090004

    move-object/from16 v9, p0

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ZoneList;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ZoneList;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/ZoneList;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/android/settings/ZoneList;->setSorting(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ZoneList;->mDefault:I

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/ZoneList;->setSelection(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/ZoneList;->setResult(I)V

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0900c4

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0900c5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, map:Ljava/util/Map;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/ZoneList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ZoneList;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ZoneList;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/ZoneList;->setSorting(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/ZoneList;->setSorting(Z)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings/ZoneList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ZoneList;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ZoneList;->finish()V

    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/ZoneList;->mSortedByTimezone:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
