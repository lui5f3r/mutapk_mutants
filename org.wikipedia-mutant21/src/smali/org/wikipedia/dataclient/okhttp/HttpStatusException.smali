.class public Lorg/wikipedia/dataclient/okhttp/HttpStatusException;
.super Ljava/io/IOException;
.source "HttpStatusException.java"


# instance fields
.field private final code:I

.field private message:Ljava/lang/String;

.field private serviceError:Lorg/wikipedia/dataclient/ServiceError;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 36
    iput p1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 37
    iput-object p2, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->url:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 23
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 24
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->url:Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/dataclient/restbase/RbServiceError;->create(Ljava/lang/String;)Lorg/wikipedia/dataclient/restbase/RbServiceError;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError:Lorg/wikipedia/dataclient/ServiceError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->message:Ljava/lang/String;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError:Lorg/wikipedia/dataclient/ServiceError;

    if-eqz v1, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError:Lorg/wikipedia/dataclient/ServiceError;

    invoke-interface {v0}, Lorg/wikipedia/dataclient/ServiceError;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", detail: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError:Lorg/wikipedia/dataclient/ServiceError;

    invoke-interface {v0}, Lorg/wikipedia/dataclient/ServiceError;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public serviceError()Lorg/wikipedia/dataclient/ServiceError;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError:Lorg/wikipedia/dataclient/ServiceError;

    return-object v0
.end method
