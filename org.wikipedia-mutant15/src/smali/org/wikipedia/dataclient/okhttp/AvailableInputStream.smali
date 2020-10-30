.class public Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;
.super Ljava/io/InputStream;
.source "AvailableInputStream.java"


# instance fields
.field private available:J

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->stream:Ljava/io/InputStream;

    .line 28
    iput-wide p2, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->available:J

    return-void
.end method

.method private decreaseAvailable(J)V
    .locals 3

    .line 69
    iget-wide v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->available:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->available:J

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 71
    iput-wide p1, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->available:J

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-wide v1, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->available:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    long-to-int v0, v1

    :cond_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 32
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->decreaseAvailable(J)V

    .line 33
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_0

    int-to-long v0, p1

    .line 39
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->decreaseAvailable(J)V

    :cond_0
    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    int-to-long p2, p1

    .line 47
    invoke-direct {p0, p2, p3}, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->decreaseAvailable(J)V

    :cond_0
    return p1
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/dataclient/okhttp/AvailableInputStream;->decreaseAvailable(J)V

    :cond_0
    return-wide p1
.end method
