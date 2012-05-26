.class Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;
.super Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkUsage"
.end annotation


# instance fields
.field mUsage:[D

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;IJJ)V
    .locals 4
    .parameter
    .parameter "uid"
    .parameter "received"
    .parameter "sent"

    .prologue
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->getNameForUid(I)V

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p3

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v1, 0x1

    add-long v2, p3, p5

    long-to-double v2, v2

    aput-wide v2, v0, v1

    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/StringBuilder;)V
    .locals 14
    .parameter "info"

    .prologue
    iget-object v6, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v7, 0x7f090306

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v7, 0x7f090307

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    double-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v7, 0x7f090308

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    double-to-long v10, v10

    iget-object v12, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    double-to-long v12, v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v7, 0x7f090309

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    double-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mUniqueName:Z

    if-nez v6, :cond_1

    const-string v6, "\n\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v7, 0x7f090313

    invoke-virtual {v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-virtual {v6}, Lcom/android/settings/battery_history/BatteryHistory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, name:Ljava/lang/String;
    #calls: Lcom/android/settings/battery_history/BatteryHistory;->getLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/settings/battery_history/BatteryHistory;->access$000(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #name:Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3       #name:Ljava/lang/String;
    const-string v6, "    "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;->mUsage:[D

    return-object v0
.end method
