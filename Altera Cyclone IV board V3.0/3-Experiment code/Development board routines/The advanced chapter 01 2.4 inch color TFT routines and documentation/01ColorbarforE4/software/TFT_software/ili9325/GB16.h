// ------------------  ������ģ�����ݽṹ���� ------------------------ //
struct  typFNT_GB16                 // ������ģ���ݽṹ 
{
       unsigned char  Index[3];               // ������������	
       unsigned char   Msk[32];                        // ���������� 
};

/////////////////////////////////////////////////////////////////////////
// ������ģ��                                                          //
// ���ֿ�: ����16.dot,����ȡģ���λ,��������:�����Ҵ��ϵ���         //
/////////////////////////////////////////////////////////////////////////
struct  typFNT_GB16 GB16[] =          // ���ݱ�
{
/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
"��",0x01,0x00,0x01,0x00,0x01,0x00,0x3F,0xF8,0x21,0x08,0x21,0x08,0x3F,0xF8,0x21,0x08,
0x21,0x08,0x21,0x08,0x3F,0xF8,0x21,0x08,0x01,0x02,0x01,0x02,0x00,0xFE,0x00,0x00,

/*--  ����:  ��  --*/
/*--  ����12;  �������¶�Ӧ�ĵ���Ϊ����x��=16x16   --*/
"��",0x00,0x00,0x3F,0xF0,0x00,0x20,0x00,0x40,0x00,0x80,0x01,0x00,0x01,0x00,0x01,0x04,
0xFF,0xFE,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x05,0x00,0x02,0x00,
};