.class public Lcom/android/browser/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 43
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 44
    .local v4, data:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 54
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v5, 0x5

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "mimetype"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "state"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 59
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, filename:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, mimetype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, action:Ljava/lang/String;
    const-string v5, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const/4 v5, 0x3

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 67
    .local v18, status:I
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 74
    .local v17, state:I
    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static/range {v18 .. v18}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    new-instance v13, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v13, launchIntent:Landroid/content/Intent;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 80
    .local v16, path:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 81
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    .line 83
    :cond_0
    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v5, 0x1000

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .end local v9           #action:Ljava/lang/String;
    .end local v12           #filename:Ljava/lang/String;
    .end local v13           #launchIntent:Landroid/content/Intent;
    .end local v14           #mimetype:Ljava/lang/String;
    .end local v16           #path:Landroid/net/Uri;
    .end local v17           #state:I
    .end local v18           #status:I
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_2
    return-void

    .line 87
    .restart local v9       #action:Ljava/lang/String;
    .restart local v12       #filename:Ljava/lang/String;
    .restart local v13       #launchIntent:Landroid/content/Intent;
    .restart local v14       #mimetype:Ljava/lang/String;
    .restart local v16       #path:Landroid/net/Uri;
    .restart local v17       #state:I
    .restart local v18       #status:I
    :catch_0
    move-exception v11

    .line 88
    .local v11, ex:Landroid/content/ActivityNotFoundException;
    const v5, 0x7f0900d3

    const/4 v6, 0x1

    :try_start_2
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 109
    .end local v9           #action:Ljava/lang/String;
    .end local v11           #ex:Landroid/content/ActivityNotFoundException;
    .end local v12           #filename:Ljava/lang/String;
    .end local v13           #launchIntent:Landroid/content/Intent;
    .end local v14           #mimetype:Ljava/lang/String;
    .end local v16           #path:Landroid/net/Uri;
    .end local v17           #state:I
    .end local v18           #status:I
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 100
    .restart local v9       #action:Ljava/lang/String;
    .restart local v12       #filename:Ljava/lang/String;
    .restart local v14       #mimetype:Ljava/lang/String;
    .restart local v17       #state:I
    .restart local v18       #status:I
    :cond_4
    :try_start_3
    new-instance v15, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW_SEC_DOWNLOADS"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v15, pageView:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v15, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
