.class Lcom/android/browser/MotionEventBuilder;
.super Ljava/lang/Object;
.source "DirectScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MotionEventBuilder$EventListener;
    }
.end annotation


# instance fields
.field private mCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mEventListener:Lcom/android/browser/MotionEventBuilder$EventListener;

.field private mMotionTiltUse:Z

.field private mNextStates:[Landroid/view/PointerDevice$PointerState;

.field private mPointerDevice:Landroid/view/PointerDevice;

.field private mPointerIds:[I

.field private mSeenStates:[Landroid/view/PointerDevice$PointerState;

.field x0:I

.field x1:I

.field y0:I

.field y1:I


# direct methods
.method public constructor <init>(Landroid/view/PointerDevice;Lcom/android/browser/MotionEventBuilder$EventListener;)V
    .locals 3
    .parameter "pointerDevice"
    .parameter "listener"

    .prologue
    const/4 v2, 0x5

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/MotionEventBuilder;->mMotionTiltUse:Z

    .line 139
    new-array v1, v2, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 140
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mPointerIds:[I

    .line 158
    iput-object p1, p0, Lcom/android/browser/MotionEventBuilder;->mPointerDevice:Landroid/view/PointerDevice;

    .line 159
    iget-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mPointerDevice:Landroid/view/PointerDevice;

    invoke-virtual {v1}, Landroid/view/PointerDevice;->newPointerStates()[Landroid/view/PointerDevice$PointerState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mNextStates:[Landroid/view/PointerDevice$PointerState;

    .line 160
    iget-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mPointerDevice:Landroid/view/PointerDevice;

    invoke-virtual {v1}, Landroid/view/PointerDevice;->newPointerStates()[Landroid/view/PointerDevice$PointerState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    .line 161
    iput-object p2, p0, Lcom/android/browser/MotionEventBuilder;->mEventListener:Lcom/android/browser/MotionEventBuilder$EventListener;

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method private fireEvent(II)V
    .locals 23
    .parameter "changedId"
    .parameter "action"

    .prologue
    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, pointers:I
    const/16 v20, 0x0

    .local v20, id:I
    :goto_0
    const/4 v7, 0x5

    move/from16 v0, v20

    move v1, v7

    if-ge v0, v1, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/browser/MotionEventBuilder;->getIndexForID([Landroid/view/PointerDevice$PointerState;I)I

    move-result v21

    .line 253
    .local v21, index:I
    if-ltz v21, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    move-object v7, v0

    aget-object v22, v7, v21

    .line 255
    .local v22, state:Landroid/view/PointerDevice$PointerState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object v7, v0

    aget-object v18, v7, v8

    .line 256
    .local v18, coords:Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->x:I

    move v7, v0

    int-to-float v7, v7

    move v0, v7

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 257
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->y:I

    move v7, v0

    int-to-float v7, v7

    move v0, v7

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 258
    const/high16 v7, 0x3f80

    move v0, v7

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 259
    const/high16 v7, 0x3f80

    move v0, v7

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mPointerIds:[I

    move-object v7, v0

    aput v20, v7, v8

    .line 263
    add-int/lit8 v8, v8, 0x1

    .line 265
    if-nez v21, :cond_1

    .line 266
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->x:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionEventBuilder;->x0:I

    .line 267
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->y:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionEventBuilder;->y0:I

    .line 251
    .end local v18           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v22           #state:Landroid/view/PointerDevice$PointerState;
    :cond_0
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 268
    .restart local v18       #coords:Landroid/view/MotionEvent$PointerCoords;
    .restart local v22       #state:Landroid/view/PointerDevice$PointerState;
    :cond_1
    const/4 v7, 0x1

    move/from16 v0, v21

    move v1, v7

    if-ne v0, v1, :cond_0

    .line 269
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->x:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionEventBuilder;->x1:I

    .line 270
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->y:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionEventBuilder;->y1:I

    goto :goto_1

    .line 275
    .end local v18           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v21           #index:I
    .end local v22           #state:Landroid/view/PointerDevice$PointerState;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 276
    .local v3, downTime:J
    move-wide v5, v3

    .line 277
    .local v5, eventTime:J
    const/16 v16, 0x2

    .line 278
    .local v16, source:I
    const/4 v11, 0x0

    .line 279
    .local v11, metaState:I
    const/high16 v12, 0x3f80

    .line 280
    .local v12, xPrecision:F
    const/high16 v13, 0x3f80

    .line 281
    .local v13, yPrecision:F
    const/4 v14, 0x0

    .line 282
    .local v14, deviceId:I
    const/4 v15, 0x0

    .line 283
    .local v15, edgeFlags:I
    const/16 v17, 0x0

    .line 287
    .local v17, flags:I
    if-nez p2, :cond_4

    const/4 v7, 0x1

    if-le v8, v7, :cond_4

    .line 290
    shl-int/lit8 v7, p1, 0x8

    or-int/lit8 v7, v7, 0x5

    or-int p2, p2, v7

    .line 297
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mPointerIds:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object v10, v0

    move/from16 v7, p2

    invoke-static/range {v3 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 307
    .local v19, ev:Landroid/view/MotionEvent;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/browser/MotionEventBuilder;->setMotionTiltUse(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/MotionEventBuilder;->mEventListener:Lcom/android/browser/MotionEventBuilder$EventListener;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/browser/MotionEventBuilder$EventListener;->onNewEvent(Landroid/view/MotionEvent;)V

    .line 309
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 310
    return-void

    .line 291
    .end local v19           #ev:Landroid/view/MotionEvent;
    :cond_4
    const/4 v7, 0x1

    move/from16 v0, p2

    move v1, v7

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    if-le v8, v7, :cond_3

    .line 294
    shl-int/lit8 v7, p1, 0x8

    or-int/lit8 v7, v7, 0x6

    or-int p2, p2, v7

    goto :goto_2
.end method

.method private getIndexForID([Landroid/view/PointerDevice$PointerState;I)I
    .locals 2
    .parameter "states"
    .parameter "id"

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 239
    aget-object v1, p1, v0

    iget-boolean v1, v1, Landroid/view/PointerDevice$PointerState;->pressed:Z

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    iget v1, v1, Landroid/view/PointerDevice$PointerState;->id:I

    if-ne v1, p2, :cond_0

    move v1, v0

    .line 243
    :goto_1
    return v1

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getMotionTiltUse()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/browser/MotionEventBuilder;->mMotionTiltUse:Z

    return v0
.end method

.method private mergeState(I)V
    .locals 5
    .parameter "nextIndex"

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/browser/MotionEventBuilder;->mNextStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v1, v3, p1

    .line 222
    .local v1, nextState:Landroid/view/PointerDevice$PointerState;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v3, v0

    .line 224
    .local v2, seenState:Landroid/view/PointerDevice$PointerState;
    iget-boolean v3, v2, Landroid/view/PointerDevice$PointerState;->pressed:Z

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/view/PointerDevice$PointerState;->id:I

    iget v4, v1, Landroid/view/PointerDevice$PointerState;->id:I

    if-ne v3, v4, :cond_1

    .line 225
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/PointerDevice$PointerState;->copyFrom(Landroid/view/PointerDevice$PointerState;)V

    .line 230
    .end local v2           #seenState:Landroid/view/PointerDevice$PointerState;
    :goto_1
    return-void

    .line 222
    .restart local v2       #seenState:Landroid/view/PointerDevice$PointerState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v2           #seenState:Landroid/view/PointerDevice$PointerState;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "MotionEventBuilder.mergeState: SHOULD NOT REACH HERE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeState(I)V
    .locals 2
    .parameter "seenIndex"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v0, v1, p1

    .line 234
    .local v0, seenState:Landroid/view/PointerDevice$PointerState;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/PointerDevice$PointerState;->pressed:Z

    .line 235
    return-void
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 169
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/PointerDevice$PointerState;->pressed:Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/browser/MotionEventBuilder;->x0:I

    .line 173
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/browser/MotionEventBuilder;->x1:I

    .line 174
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/browser/MotionEventBuilder;->y0:I

    .line 175
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/browser/MotionEventBuilder;->y1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMotionTiltUse(Z)V
    .locals 0
    .parameter "tilt"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/browser/MotionEventBuilder;->mMotionTiltUse:Z

    .line 149
    return-void
.end method

.method public declared-synchronized update()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/browser/MotionEventBuilder;->mPointerDevice:Landroid/view/PointerDevice;

    iget-object v7, p0, Lcom/android/browser/MotionEventBuilder;->mNextStates:[Landroid/view/PointerDevice$PointerState;

    invoke-virtual {v6, v7}, Landroid/view/PointerDevice;->update([Landroid/view/PointerDevice$PointerState;)V

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, needMotionEvent:Z
    invoke-direct {p0}, Lcom/android/browser/MotionEventBuilder;->getMotionTiltUse()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/4 v6, 0x5

    if-ge v0, v6, :cond_5

    .line 191
    iget-object v6, p0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    invoke-direct {p0, v6, v0}, Lcom/android/browser/MotionEventBuilder;->getIndexForID([Landroid/view/PointerDevice$PointerState;I)I

    move-result v4

    .line 192
    .local v4, seenIndex:I
    iget-object v6, p0, Lcom/android/browser/MotionEventBuilder;->mNextStates:[Landroid/view/PointerDevice$PointerState;

    invoke-direct {p0, v6, v0}, Lcom/android/browser/MotionEventBuilder;->getIndexForID([Landroid/view/PointerDevice$PointerState;I)I

    move-result v2

    .line 194
    .local v2, nextIndex:I
    if-gez v4, :cond_1

    if-gez v2, :cond_1

    .line 185
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    if-gez v4, :cond_2

    .line 200
    invoke-direct {p0, v2}, Lcom/android/browser/MotionEventBuilder;->mergeState(I)V

    .line 201
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/android/browser/MotionEventBuilder;->fireEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 179
    .end local v0           #id:I
    .end local v1           #needMotionEvent:Z
    .end local v2           #nextIndex:I
    .end local v4           #seenIndex:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 203
    .restart local v0       #id:I
    .restart local v1       #needMotionEvent:Z
    .restart local v2       #nextIndex:I
    .restart local v4       #seenIndex:I
    :cond_2
    if-gez v2, :cond_3

    .line 204
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v0, v6}, Lcom/android/browser/MotionEventBuilder;->fireEvent(II)V

    .line 205
    invoke-direct {p0, v4}, Lcom/android/browser/MotionEventBuilder;->removeState(I)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v6, p0, Lcom/android/browser/MotionEventBuilder;->mSeenStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v5, v6, v4

    .line 209
    .local v5, seenState:Landroid/view/PointerDevice$PointerState;
    iget-object v6, p0, Lcom/android/browser/MotionEventBuilder;->mNextStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v3, v6, v2

    .line 210
    .local v3, nextState:Landroid/view/PointerDevice$PointerState;
    invoke-virtual {v5, v3}, Landroid/view/PointerDevice$PointerState;->equals(Landroid/view/PointerDevice$PointerState;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v9

    :goto_2
    or-int/2addr v1, v6

    .line 211
    invoke-virtual {v5, v3}, Landroid/view/PointerDevice$PointerState;->copyFrom(Landroid/view/PointerDevice$PointerState;)V

    goto :goto_1

    :cond_4
    move v6, v8

    .line 210
    goto :goto_2

    .line 215
    .end local v2           #nextIndex:I
    .end local v3           #nextState:Landroid/view/PointerDevice$PointerState;
    .end local v4           #seenIndex:I
    .end local v5           #seenState:Landroid/view/PointerDevice$PointerState;
    :cond_5
    if-eqz v1, :cond_6

    .line 216
    const/4 v6, -0x1

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/browser/MotionEventBuilder;->fireEvent(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_6
    monitor-exit p0

    return-void
.end method
