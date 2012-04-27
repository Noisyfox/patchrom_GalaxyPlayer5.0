.class public Lcom/android/browser/BrowserBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "BrowserBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBackupAgent$Bookmark;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 202
    return-void
.end method

.method private buildBookmarkFile(Ljava/io/FileOutputStream;)J
    .locals 24
    .parameter "outfstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 217
    .local v12, crc:Ljava/util/zip/CRC32;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x200

    invoke-direct {v10, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 218
    .local v10, bufstream:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 220
    .local v9, bout:Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "visits"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "date"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "created"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "folder"

    aput-object v7, v5, v6

    const-string v6, "bookmark == 1 "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 229
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 231
    .local v11, count:I
    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 232
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    .line 233
    .local v20, record:[B
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 234
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 237
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move v1, v11

    if-ge v0, v1, :cond_0

    .line 238
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 240
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 241
    .local v22, url:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 242
    .local v23, visits:I
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 243
    .local v16, date:J
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 244
    .local v13, created:J
    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 245
    .local v21, title:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 248
    .local v18, folder:I
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 249
    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 250
    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 251
    move-object v0, v9

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 252
    invoke-virtual {v9, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 253
    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 254
    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 256
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    .line 257
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 258
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 237
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 263
    .end local v13           #created:J
    .end local v16           #date:J
    .end local v18           #folder:I
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #url:Ljava/lang/String;
    .end local v23           #visits:I
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 264
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    return-wide v3
.end method

.method private copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J
    .locals 8
    .parameter "data"
    .parameter "file"
    .parameter "toRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2000

    .line 299
    const/16 v0, 0x2000

    .line 300
    .local v0, CHUNK:I
    new-array v1, v6, [B

    .line 301
    .local v1, buf:[B
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 304
    .local v2, crc:Ljava/util/zip/CRC32;
    const/4 v4, 0x0

    .line 307
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :goto_0
    if-lez p3, :cond_0

    .line 310
    const/4 v6, 0x0

    const/16 v7, 0x2000

    :try_start_1
    invoke-virtual {p1, v1, v6, v7}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v3

    .line 311
    .local v3, numRead:I
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 312
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 313
    sub-int/2addr p3, v3

    .line 314
    goto :goto_0

    .line 316
    .end local v3           #numRead:I
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 320
    if-eqz v5, :cond_1

    .line 321
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 316
    :cond_1
    return-wide v6

    .line 320
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v4, :cond_2

    .line 321
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 320
    :cond_2
    throw v6

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private copyFileToBackup(Ljava/lang/String;Ljava/io/File;Landroid/app/backup/BackupDataOutput;)V
    .locals 8
    .parameter "key"
    .parameter "file"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2000

    .line 270
    const/16 v0, 0x2000

    .line 271
    .local v0, CHUNK:I
    new-array v1, v6, [B

    .line 273
    .local v1, buf:[B
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    .line 274
    .local v5, toCopy:I
    invoke-virtual {p3, p1, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 277
    const/4 v2, 0x0

    .line 280
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v3, in:Ljava/io/FileInputStream;
    :goto_0
    if-lez v5, :cond_1

    .line 283
    const/4 v6, 0x0

    const/16 v7, 0x2000

    :try_start_1
    invoke-virtual {v3, v1, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 284
    .local v4, nRead:I
    invoke-virtual {p3, v1, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    sub-int/2addr v5, v4

    goto :goto_0

    .line 290
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #nRead:I
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 290
    :cond_0
    throw v6

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 291
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 294
    :cond_2
    return-void

    .line 290
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fileSize"
    .parameter "crc"
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 334
    .local v0, out:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 335
    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 336
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 342
    :cond_0
    return-void

    .line 338
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 338
    :cond_1
    throw v1
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 18
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const-wide/16 v14, -0x1

    .line 75
    .local v14, savedFileSize:J
    const-wide/16 v12, -0x1

    .line 76
    .local v12, savedCrc:J
    const/16 v16, -0x1

    .line 79
    .local v16, savedVersion:I
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v10, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 83
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 84
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 88
    if-eqz v10, :cond_0

    .line 89
    :goto_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 94
    :cond_0
    const-string v4, "bkp"

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v17

    .line 95
    .local v17, tmpfile:Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v11, outfstream:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserBackupAgent;->buildBookmarkFile(Ljava/io/FileOutputStream;)J

    move-result-wide v7

    .line 101
    .local v7, newCrc:J
    if-nez v16, :cond_1

    cmp-long v4, v7, v12

    if-nez v4, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-eqz v4, :cond_2

    .line 105
    :cond_1
    const-string v4, "_bookmarks_"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserBackupAgent;->copyFileToBackup(Ljava/lang/String;Ljava/io/File;Landroid/app/backup/BackupDataOutput;)V

    .line 109
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/browser/BrowserBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 113
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 115
    return-void

    .line 88
    .end local v7           #newCrc:J
    .end local v11           #outfstream:Ljava/io/FileOutputStream;
    .end local v17           #tmpfile:Ljava/io/File;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_3

    .line 89
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 88
    :cond_3
    throw v4

    .line 111
    .restart local v11       #outfstream:Ljava/io/FileOutputStream;
    .restart local v17       #tmpfile:Ljava/io/File;
    :catchall_1
    move-exception v4

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 113
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 111
    throw v4

    .line 85
    .end local v11           #outfstream:Ljava/io/FileOutputStream;
    .end local v17           #tmpfile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 88
    if-eqz v10, :cond_0

    goto :goto_0
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 27
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const-wide/16 v10, -0x1

    .line 126
    .local v10, crc:J
    const-string v4, "rst"

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v26

    .line 128
    .local v26, tmpfile:Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 129
    const-string v4, "_bookmarks_"

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserBackupAgent;->copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v17

    .line 133
    .end local v10           #crc:J
    .local v17, crc:J
    :try_start_1
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    .local v22, infstream:Ljava/io/FileInputStream;
    new-instance v21, Ljava/io/DataInputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    .local v21, in:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 138
    .local v16, count:I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v15, bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 143
    new-instance v24, Lcom/android/browser/BrowserBackupAgent$Bookmark;

    invoke-direct/range {v24 .. v24}, Lcom/android/browser/BrowserBackupAgent$Bookmark;-><init>()V

    .line 144
    .local v24, mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    .line 145
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->visits:I

    .line 146
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/browser/BrowserBackupAgent$Bookmark;->date:J

    .line 147
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/browser/BrowserBackupAgent$Bookmark;->created:J

    .line 148
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->title:Ljava/lang/String;

    .line 149
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->folder:I

    .line 150
    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 155
    .end local v24           #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    :cond_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 156
    .local v14, N:I
    const/16 v25, 0x0

    .line 158
    .local v25, nUnique:I
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v6, v4

    .line 159
    .local v6, urlCol:[Ljava/lang/String;
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move v1, v14

    if-ge v0, v1, :cond_2

    .line 160
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/browser/BrowserBackupAgent$Bookmark;

    .line 163
    .restart local v24       #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url == \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bookmark"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " == 1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 167
    .local v19, cursor:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 172
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->title:Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->folder:I

    move v13, v0

    invoke-static/range {v7 .. v13}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 175
    add-int/lit8 v25, v25, 0x1

    .line 179
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 159
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 181
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v24           #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    :cond_2
    const-string v4, "BrowserBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored "

    .end local v6           #urlCol:[Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bookmarks"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 186
    if-eqz v21, :cond_3

    .line 187
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    move-wide/from16 v10, v17

    .line 194
    .end local v14           #N:I
    .end local v15           #bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    .end local v16           #count:I
    .end local v17           #crc:J
    .end local v20           #i:I
    .end local v21           #in:Ljava/io/DataInputStream;
    .end local v22           #infstream:Ljava/io/FileInputStream;
    .end local v25           #nUnique:I
    .restart local v10       #crc:J
    :cond_4
    :goto_3
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v7, p0

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/browser/BrowserBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 198
    :catchall_0
    move-exception v4

    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    throw v4

    .line 182
    .end local v10           #crc:J
    .restart local v17       #crc:J
    .restart local v21       #in:Ljava/io/DataInputStream;
    .restart local v22       #infstream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object/from16 v23, v4

    .line 183
    .local v23, ioe:Ljava/io/IOException;
    :try_start_5
    const-string v4, "BrowserBackupAgent"

    const-string v5, "Bad backup data; not restoring"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 184
    const-wide/16 v10, -0x1

    .line 186
    .end local v17           #crc:J
    .restart local v10       #crc:J
    if-eqz v21, :cond_4

    .line 187
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 186
    .end local v10           #crc:J
    .end local v23           #ioe:Ljava/io/IOException;
    .restart local v17       #crc:J
    :catchall_1
    move-exception v4

    if-eqz v21, :cond_5

    .line 187
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V

    .line 186
    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 198
    .end local v21           #in:Ljava/io/DataInputStream;
    .end local v22           #infstream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-wide/from16 v10, v17

    .end local v17           #crc:J
    .restart local v10       #crc:J
    goto :goto_4

    :cond_6
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 200
    return-void
.end method
