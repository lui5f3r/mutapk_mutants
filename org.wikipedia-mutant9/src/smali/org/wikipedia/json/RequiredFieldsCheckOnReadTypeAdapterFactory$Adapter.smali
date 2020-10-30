.class final Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "RequiredFieldsCheckOnReadTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final requiredFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gson/TypeAdapter;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;->delegate:Lcom/google/gson/TypeAdapter;

    .line 68
    iput-object p2, p0, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;->requiredFields:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/TypeAdapter;Ljava/util/Set;Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/TypeAdapter;Ljava/util/Set;)V

    return-void
.end method

.method private allRequiredFieldsPresent(Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;)Z"
        }
    .end annotation

    .line 82
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 84
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 88
    :goto_0
    new-instance p2, Lcom/google/gson/JsonParseException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;->delegate:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;->requiredFields:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;->allRequiredFieldsPresent(Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory$Adapter;->delegate:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
