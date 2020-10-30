.class public Lorg/wikipedia/analytics/InstallReferrerListener;
.super Ljava/lang/Object;
.source "InstallReferrerListener.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# static fields
.field private static INSTANCE:Lorg/wikipedia/analytics/InstallReferrerListener;


# instance fields
.field private referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getInstallReferrerAttempts()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 40
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setInstallReferrerAttempts(I)V

    .line 41
    new-instance v0, Lorg/wikipedia/analytics/InstallReferrerListener;

    invoke-direct {v0}, Lorg/wikipedia/analytics/InstallReferrerListener;-><init>()V

    sput-object v0, Lorg/wikipedia/analytics/InstallReferrerListener;->INSTANCE:Lorg/wikipedia/analytics/InstallReferrerListener;

    .line 42
    invoke-direct {v0, p0}, Lorg/wikipedia/analytics/InstallReferrerListener;->queryReferrer(Landroid/content/Context;)V

    return-void
.end method

.method private openPageFromUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 175
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    const-class p2, Lorg/wikipedia/page/PageActivity;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private processInstallReferrer()V
    .locals 16

    move-object/from16 v1, p0

    .line 106
    iget-object v0, v1, Lorg/wikipedia/analytics/InstallReferrerListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, v1, Lorg/wikipedia/analytics/InstallReferrerListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received install referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "&"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_9

    :try_start_2
    aget-object v10, v0, v9

    const-string v11, "="

    .line 131
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 132
    array-length v11, v10

    const/4 v12, 0x2

    if-ge v11, v12, :cond_2

    goto/16 :goto_3

    .line 135
    :cond_2
    aget-object v11, v10, v4

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x4

    const/4 v4, 0x3

    const/4 v13, 0x1

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v14, "utm_source"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x3

    goto :goto_2

    :sswitch_1
    const-string v14, "utm_medium"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :sswitch_2
    const-string v14, "channel"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x4

    goto :goto_2

    :sswitch_3
    const-string v14, "utm_campaign"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    goto :goto_2

    :sswitch_4
    const-string v14, "referrer_url"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v11, -0x1

    :goto_2
    if-eqz v11, :cond_8

    if-eq v11, v13, :cond_7

    if-eq v11, v12, :cond_6

    if-eq v11, v4, :cond_5

    if-eq v11, v15, :cond_4

    goto :goto_3

    .line 149
    :cond_4
    aget-object v4, v10, v13

    move-object v8, v4

    goto :goto_3

    .line 146
    :cond_5
    aget-object v4, v10, v13

    move-object v7, v4

    goto :goto_3

    .line 143
    :cond_6
    aget-object v4, v10, v13

    move-object v6, v4

    goto :goto_3

    .line 140
    :cond_7
    aget-object v4, v10, v13

    move-object v5, v4

    goto :goto_3

    .line 137
    :cond_8
    aget-object v2, v10, v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    nop

    goto :goto_4

    :catch_1
    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 160
    :cond_9
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 161
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 162
    :cond_a
    new-instance v0, Lorg/wikipedia/analytics/InstallReferrerFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/wikipedia/analytics/InstallReferrerFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    .line 163
    invoke-virtual {v0, v2, v5, v6, v7}, Lorg/wikipedia/analytics/InstallReferrerFunnel;->logInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/wikipedia/util/ShareUtil;->canOpenUrlInApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 166
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lorg/wikipedia/analytics/InstallReferrerListener;->openPageFromUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    :cond_c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 169
    invoke-static {v8}, Lorg/wikipedia/settings/Prefs;->setAppChannel(Ljava/lang/String;)V

    :cond_d
    return-void

    :catch_2
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ccdb6b1 -> :sswitch_4
        -0x3db0f7f -> :sswitch_3
        0x2c0b7d03 -> :sswitch_2
        0x70a1a726 -> :sswitch_1
        0x7b737fcc -> :sswitch_0
    .end sparse-switch
.end method

.method private queryReferrer(Landroid/content/Context;)V
    .locals 0

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/analytics/InstallReferrerListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onInstallReferrerSetupFinished$0$InstallReferrerListener()V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/wikipedia/analytics/InstallReferrerListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/wikipedia/analytics/InstallReferrerListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 76
    sput-object v0, Lorg/wikipedia/analytics/InstallReferrerListener;->INSTANCE:Lorg/wikipedia/analytics/InstallReferrerListener;

    return-void
.end method

.method public onInstallReferrerServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/wikipedia/analytics/InstallReferrerListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 83
    sput-object v0, Lorg/wikipedia/analytics/InstallReferrerListener;->INSTANCE:Lorg/wikipedia/analytics/InstallReferrerListener;

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/analytics/InstallReferrerListener;->processInstallReferrer()V

    const p1, 0x7fffffff

    .line 59
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setInstallReferrerAttempts(I)V

    .line 71
    :goto_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/analytics/-$$Lambda$InstallReferrerListener$WfTE4Iuv_m0H_6uvMfNQH11wBSM;

    invoke-direct {v0, p0}, Lorg/wikipedia/analytics/-$$Lambda$InstallReferrerListener$WfTE4Iuv_m0H_6uvMfNQH11wBSM;-><init>(Lorg/wikipedia/analytics/InstallReferrerListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
