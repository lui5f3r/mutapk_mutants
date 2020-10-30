.class Lorg/wikipedia/page/ToCHandler$1;
.super Ljava/lang/Object;
.source "ToCHandler.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/ToCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/ToCHandler;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/ToCHandler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler$1;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/ToCHandler$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 5

    .line 75
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$1;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-static {v0}, Lorg/wikipedia/page/ToCHandler;->access$000(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sections"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler$1;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-static {v1}, Lorg/wikipedia/page/ToCHandler;->access$100(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "yOffset"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    invoke-virtual {v1, v2, v3}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->setYOffset(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler$1;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-static {p1}, Lorg/wikipedia/page/ToCHandler;->access$100(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    move-result-object p1

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler$1;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-static {v1}, Lorg/wikipedia/page/ToCHandler;->access$200(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/views/ObservableWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->setYOffset(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
