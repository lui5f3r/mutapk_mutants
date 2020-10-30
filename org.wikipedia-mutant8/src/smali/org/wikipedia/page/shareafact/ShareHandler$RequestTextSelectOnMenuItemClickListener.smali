.class Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareHandler.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/shareafact/ShareHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestTextSelectOnMenuItemClickListener"
.end annotation


# instance fields
.field private final purpose:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/page/shareafact/ShareHandler;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/shareafact/ShareHandler;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->this$0:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->purpose:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onMenuItemClick$0$ShareHandler$RequestTextSelectOnMenuItemClickListener(Ljava/lang/String;)V
    .locals 7

    .line 136
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->this$0:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-static {v0}, Lorg/wikipedia/page/shareafact/ShareHandler;->access$100(Lorg/wikipedia/page/shareafact/ShareHandler;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->this$0:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-static {v0}, Lorg/wikipedia/page/shareafact/ShareHandler;->access$200(Lorg/wikipedia/page/shareafact/ShareHandler;)V

    .line 143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "text"

    const-string v1, ""

    .line 144
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->purpose:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6f3eaefb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    const v4, -0x4f9c2645

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "define"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "edit_here"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown purpose="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->purpose:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->this$0:Lorg/wikipedia/page/shareafact/ShareHandler;

    const-string v2, "section"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "isTitleDescription"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v2, p1, v0}, Lorg/wikipedia/page/shareafact/ShareHandler;->access$300(Lorg/wikipedia/page/shareafact/ShareHandler;ILjava/lang/String;Z)V

    goto :goto_1

    .line 147
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->this$0:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/shareafact/ShareHandler;->showWiktionaryDefinition(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 135
    iget-object p1, p0, Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;->this$0:Lorg/wikipedia/page/shareafact/ShareHandler;

    invoke-static {p1}, Lorg/wikipedia/page/shareafact/ShareHandler;->access$000(Lorg/wikipedia/page/shareafact/ShareHandler;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p1

    invoke-static {}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->getTextSelection()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/page/shareafact/-$$Lambda$ShareHandler$RequestTextSelectOnMenuItemClickListener$WAbzkzKF0nbOOhJpVcVFFSSH75A;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/shareafact/-$$Lambda$ShareHandler$RequestTextSelectOnMenuItemClickListener$WAbzkzKF0nbOOhJpVcVFFSSH75A;-><init>(Lorg/wikipedia/page/shareafact/ShareHandler$RequestTextSelectOnMenuItemClickListener;)V

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x1

    return p1
.end method
