.class public Lorg/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final Empty:[Ljava/lang/String;


# instance fields
.field keys:[Ljava/lang/String;

.field private size:I

.field vals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 39
    sput-object v0, Lorg/jsoup/nodes/Attributes;->Empty:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 44
    sget-object v0, Lorg/jsoup/nodes/Attributes;->Empty:[Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Attributes;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return p0
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Attributes;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 116
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 117
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    aput-object p1, v0, v1

    .line 118
    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 119
    iput v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return-void
.end method

.method private checkCapacity(I)V
    .locals 2

    .line 49
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 50
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 54
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v1, v0, 0x2

    :cond_2
    if-le p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    .line 58
    :goto_1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static checkNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 64
    new-array v0, p1, [Ljava/lang/String;

    .line 65
    array-length v1, p0

    .line 66
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private indexOfKeyIgnoreCase(Ljava/lang/String;)I
    .locals 2

    .line 80
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private remove(I)V
    .locals 4

    .line 176
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 177
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 179
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_1
    iget p1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 183
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 184
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public addAll(Lorg/jsoup/nodes/Attributes;)V
    .locals 2

    .line 238
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v1, p1, Lorg/jsoup/nodes/Attributes;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 242
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 244
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 278
    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v1, v2, :cond_1

    .line 279
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 280
    new-instance v2, Lorg/jsoup/nodes/BooleanAttribute;

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lorg/jsoup/nodes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_0
    new-instance v2, Lorg/jsoup/nodes/Attribute;

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 282
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Attributes;
    .locals 3

    .line 366
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iput v1, v0, Lorg/jsoup/nodes/Attributes;->size:I

    .line 371
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Lorg/jsoup/nodes/Attributes;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 341
    const-class v1, Lorg/jsoup/nodes/Attributes;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Attributes;

    .line 345
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v2, p1, Lorg/jsoup/nodes/Attributes;->size:I

    if-eq v1, v2, :cond_2

    return v0

    .line 346
    :cond_2
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v2, p1, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 347
    :cond_3
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget-object p1, p1, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 222
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 356
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 358
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public html()Ljava/lang/String;
    .locals 3

    .line 302
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 306
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 315
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 316
    iget-object v3, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 317
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 320
    invoke-static {v2, v3, p2}, Lorg/jsoup/nodes/Attribute;->shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "=\""

    .line 321
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v5, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 322
    invoke-static/range {v4 .. v9}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    const/16 v2, 0x22

    .line 323
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method indexOfKey(Ljava/lang/String;)I
    .locals 2

    .line 71
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/jsoup/nodes/Attributes$1;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public normalize()V
    .locals 3

    const/4 v0, 0x0

    .line 380
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_0

    .line 381
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 2

    .line 129
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 131
    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;
    .locals 2

    .line 168
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 170
    iput-object p0, p1, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 138
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 141
    iget-object p2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 142
    iget-object p2, p0, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 230
    iget v0, p0, Lorg/jsoup/nodes/Attributes;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 330
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
